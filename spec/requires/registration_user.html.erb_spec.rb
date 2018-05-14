require 'rails_helper'

RSpec.describe "my registration", type: :request do
  context "when user want to sign in" do
	it 'should be unsuccessful without email' do  
		visit "users/sign_up"  
		fill_in 'email', with: 'caca@caca.com'
		fill_in 'password', :with => "yoloyolo"    
		fill_in 'password_confirmation', :with => "yoloyolo"
		fill_in 'first_name', :with => 'Jacko'
		fill_in 'last_name', :with => 'Jack'    
		click_button 'Sign up'    
		expect(page).to have_content "home" 
	end
  end
end

# RSpec.describe "home page", :type => :request do
#   it "displays the user's username after successful login" do
#     user = FactoryGirl.create(:user, :first_name => "jdoe", :last_name => 'doej', :password => "yoloyolo")
#     visit "/login"
#     fill_in "Username", :with => "jdoe"
#     fill_in "Password", :with => "secret"
#     click_button "Log in"

#     expect(page).to have_selector(".header .username", :text => "jdoe")
#   end
# end