require 'spec_helper'

describe User do

  before { @user = User.new name: "The Dude", email: "Dude@Abides.org" }
  subject { @user }

  it { should respond_to :name }
  it { should respond_to :email }

  it { should be_valid }

  describe "when there is no name" do
    before { @user.name = "" }
    it { should_not be_valid }
  end

  describe "name must be at least one character" do
    before { @user.name = "1" }
    it { should be_valid }
  end

  describe "name must be at no more than 50 characters" do
    before { @user.name = "z"*50 }
    it { should be_valid }
  end

  describe "name must be at no more than 50 characters" do
    before { @user.name = "x"*51 }
    it { should_not be_valid }
  end

  describe "when there is no email" do
    before { @user.email = "" }
    it { should_not be_valid }
  end

  # Only check for @ sign -- we validate via round trip email, not format
  describe "when email is invalid" do
    before { @user.email = "Dude-abides.orf" }
    it { should_not be_valid }
  end

  describe "when email is valid" do
    before { @user.email = "Dude@abides.orf" }
    it { should be_valid }
  end

  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.save
    end
    it { should_not be_valid }
  end

  describe "email must be unique and case insensitive" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email.upcase!
      user_with_same_email.save
    end
    it { should_not be_valid }
  end

  describe "find_by_email must be case sensitive in database" do
    it "should find only with lower case" do
      mixed_case_email = @user.email.dup
      @user.save
      expect( User.find_by_email(mixed_case_email)).to be_nil
      expect( User.find_by_email(mixed_case_email.upcase)).to be_nil
      expect( User.find_by_email(mixed_case_email.downcase)).not_to be_nil
    end
  end

end
