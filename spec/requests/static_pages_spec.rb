require 'spec_helper'

describe "Static pages" do

	#Set global page title prefix
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	subject { page }

	#Testing Home Page behavior
	describe "Home page" do
		before { visit root_path }

		it { should have_content('Sample App') }
		it { should have_title(full_title('')) }
		it { should_not have_title('| Home') }		
	end

	#Testing Help Page behavior
	describe "Help page" do
		before { visit help_path }

		it { should have_content('Help') }
		it { should have_title(full_title('Help')) }
	end

	#Testing About Page behavior
	describe "About page" do
		before { visit about_path }

		it { should have_content('About') }
		it { should have_title(full_title('About Us')) }
	end

	#Testing Contact Page behavior
	describe "Contact page" do
		before { visit contact_path }

		it { should have_content('Contact') }
		it { should have_title(full_title('Contact')) }
	end

end