require 'rails_helper'

RSpec.describe User, type: :model do
  context 'User submit test' do
	  it 'First name absent test' do 
	    jack = build(:user_without_first_name)
	    expect(jack.save).to be false
	  end
      it 'Last name absent test' do
      	jack = build(:user_without_last_name)
		expect(jack.save).to be false
      end
      it 'Email unique test' do
        jack = create(:user)
        peter = build(:user)
        expect(peter.save).to be false
      end
      it 'First name space test' do
        jack = build(:user_with_blank)
        expect(jack.save).to be false
      end
  end
end
	