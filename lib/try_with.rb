require "try_with/version"

module TryWith
  # Your code goes here...
 
  class Attempts
    def initialize(*args)
      @count = args.first
    end

    def attempts &block
      @tries = 0
      while trying? do
        try_block block
      end
    end

    private

    def try_block(block)
      block.call
    rescue
      @tries += 1
      raise unless tries_left?
    else
      @success = true
    end

    def trying?
      !success?
    end

    def tries_left?
     @tries < @count
    end

    def success?
      @success
    end

  end

  module ObjectMethods
    def try_with(*args)
      Attempts.new(*args)
    end
  end

end

Object.send :include, TryWith::ObjectMethods
