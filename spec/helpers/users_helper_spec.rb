# Test app/helpers/users_helper.rb

require 'spec_helper'

describe UsersHelper do

	describe "users_title" do

		it "should include the descriminator" do
      expect( users_title "Foo" ).to match /Foo/

    end

    it "should include the app name" do
      expect( users_title "Bar" ).to match /iso-yd/
    end

    it "should handle an empty descriminator" do
      expect( users_title "" ).to match /iso-yd | User page/
    end

    it "should put the descriminator after the bar" do
      expect( users_title "User something" ).to match /iso-yd | User something/
    end
  end

end