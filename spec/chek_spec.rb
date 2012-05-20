#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__)))

describe Chek do
  it "normal require" do
    expect { require 'foobar-can-not-require' }.to raise_error(LoadError)
    expect { require 'foobar-normal' }.to_not raise_error(LoadError)
    FoobarNormal.piyo.should == "piyopiyo"
  end

  context '☑' do
    it "require" do
      expect { ☑ 'foobar-can-not-require' }.to     raise_error(LoadError)
      expect { ☑ 'foobar-with-chek'       }.to_not raise_error(LoadError)
      FoobarWithChek.piyo.should == "piyopiyo"
    end
  end

  context '☐' do
    it "does not require" do
      expect { ☐ 'foobar-can-not-require' }.to_not raise_error(LoadError)
      expect { ☐ 'foobar-without-chek'    }.to_not raise_error(LoadError)
      expect { FoobarWithoutChek.piyo     }.to raise_error(NameError)
    end
  end
end

