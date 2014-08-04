require 'spec_helper'

describe User do

  before do
    @user = User.new name: "The Dude",
      email: "Dude@Abides.org",
      password: "NeverGuess",
      password_confirmation: "NeverGuess"
  end
  subject { @user }

  it { should respond_to :name }
  it { should respond_to :email }
  # has_secure_password
  it { should respond_to :password_digest }
  it { should respond_to :password }
  it { should respond_to :password_confirmation }
  it { should respond_to :authenticate }


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
  
  describe "Password and confirmation must match" do
    before { @user.password_confirmation = "Nope, wrong" }
    it { should_not be_valid }
  end

  describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by email: @user.email }

    describe "with valid password" do
      it { should eq found_user.authenticate @user.password }
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate "wrongPasswd" }
      it { should_not eq user_for_invalid_password }
      specify { expect(user_for_invalid_password).to be_false }
    end
  end

  describe "password must be at least six characters" do
    before { @user.password = @user.password_confirmation = "p" * 5 }
    it { should be_invalid }
  end

end
