require 'spec_helper'

describe "try_with attempts" do
  it "retries given number of times" do
    tries = 0
    begin
      try_with(3).attempts do
        tries += 1
        raise "Foo"
      end
    rescue
    end
    tries.should == 3

    tries = 0
    begin
      try_with(5).attempts do
        tries += 1
        raise "Foo"
      end
    rescue
    end
    tries.should == 5
  end

  it "allows error after failed attempts" do
    expect do
      try_with(5).attempts do
        raise "Foo"
      end
    end.to raise_error "Foo"
  end

  it "doesn't retry after a successful call" do
    tries = 0
    try_with(5).attempts do
      tries += 1
      raise "Foo" if tries < 3
    end

    tries.should == 3
  end
end
