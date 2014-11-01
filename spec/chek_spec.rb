#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__)))

describe Chek do
  it "normal require" do
    expect { require 'foobar-can-not-require' }.to raise_error(LoadError)
    expect { require 'foobar-normal' }.not_to raise_error
    expect(FoobarNormal.piyo).to eq("piyopiyo")
  end

  context '☑' do
    it "require" do
      expect { ☑ 'foobar-can-not-require' }.to     raise_error(LoadError)
      expect { ☑ 'foobar-with-chek'       }.not_to raise_error
      expect(FoobarWithChek.piyo).to eq("piyopiyo")
    end
  end

  context '☐' do
    it "does not require" do
      expect { ☐ 'foobar-can-not-require' }.not_to raise_error
      expect { ☐ 'foobar-without-chek'    }.not_to raise_error
      expect { FoobarWithoutChek.piyo     }.to raise_error(NameError)
    end
  end
end

