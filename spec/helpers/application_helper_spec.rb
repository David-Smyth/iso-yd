# Test app/helpers/application_helper.rb

require 'spec_helper'

describe ApplicationHelper do

	describe "page_title" do

		it "should include the descriminator" do
      expect( page_title "Foo" ).to match /Foo/

    end

    it "should include the app name" do
      expect( page_title "Bar" ).to match /iso-yd/
    end

    it "should handle an empty descriminator" do
      expect( page_title "" ).to match /iso-yd | WebApp/
    end

    it "should put the descriminator after the bar" do
      expect( page_title "Home of" ).to match /iso-yd | Home of Web/
    end
  end

end