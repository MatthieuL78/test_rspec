require 'rails_helper'

RSpec.describe "devise/registrations/new.html.erb", type: :view do
  context "when user want to sign in" do
	it 'should be unsuccessful without email' do    
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
