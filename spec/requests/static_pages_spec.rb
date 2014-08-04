require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "Home page" do

    before { visit root_path }

  	it { should have_title page_title 'Home of' }
 
    it { should have_content 'Yacht Design Analysis for ISO' }

  end

  describe "About page" do

    before { visit about_path }
    subject { page }

  	it { should have_title 'About' }

  	it { should have_content 'MIT License' }

  end

  describe "Help page" do

    before { visit help_path }
    subject { page }

  	it { should have_title 'Help for' }

  	it { should have_content 'send email to me' }

  end

  describe "Contact page" do

    before { visit contact_path }
    subject { page }

  	it { should have_title 'Contact Author of' }

    it { should have_content 'David E. Smyth' }

  end

  it "should have the right links on each page" do
    visit root_path
    click_link "About"
    expect(page).to have_title(page_title('About'))
    click_link "Help"
    expect(page).to have_title(page_title('Help for'))
    click_link "Contact"
    expect(page).to have_title(page_title('Contact Author of'))
    click_link "Home"
    expect(page).to have_title(page_title('Home of'))
    click_link "Sign up now!"
    expect(page).to have_title(page_title('Sign up for'))
  end

end
