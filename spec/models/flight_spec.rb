require 'rails_helper'

describe Flight do
  let!(:valid_flight) { Flight.new(name: "Fremont Whiskey Tour") }
  let(:invalid_flight) { Flight.new(name: "") }

  describe 'validations' do
    describe 'when valid' do
      it 'validates the presence of name' do
        expect(valid_flight.name).to eq('Fremont Whiskey Tour')
      end
    end

    describe 'when not valid' do
      it 'is not valid without a name' do
        expect(invalid_flight).to_not be_valid
      end
    end
  end
end