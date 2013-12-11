require 'spec_helper'

describe "Static pages" do

	#Set global page title prefix
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	#Testing Home Page behavior
	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			expect(page).to have_content('Sample App')
		end

		#Title test
		it "should have the title 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_title("#{base_title} | Home")
		end

	end

	#Testing Help Page behavior
	describe "Help page" do

		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		#Title test
		it "should have the title 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title("#{base_title} | Help")
		end

	end

	#Testing About Page behavior
	describe "About page" do

		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end

		#Title test
		it "should have the title 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_title("#{base_title} | About Us")
		end
		
	end

	#Testing Contact Page behavior
	describe "Contact page" do

		it "should have the content 'Contact Us'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact Us')
		end

		#Title test
		it "should have the title 'Contact Us'" do
			visit '/static_pages/contact'
			expect(page).to have_title("#{base_title} | Contact Us")
		end
	end


end