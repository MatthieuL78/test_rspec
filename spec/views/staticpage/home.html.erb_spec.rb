require 'rails_helper'

RSpec.describe "staticpage/home.html.erb", type: :view do
  context "when user is logon" do
	  let(:user) { User.new(activated: activated)}
	  let(:activated) {true}
	it 'should be successful' do
	  render :html => 'staticpage/home.html.erb'
	  expect(render).to include('prout')
	end
  end
end
