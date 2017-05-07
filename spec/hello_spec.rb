require 'rails_helper'

RSpec.describe SayController, type: :controller do

  describe 'routing' do
    it { should route(:get, '/hello').to(action: :hello) }
  end

  describe 'GET #hello' do
    before { get :hello}
    it 'should responsne with json data' do
      expect(response.body).to eq "{\"hello\":\"Rails!\"}"
    end

    it { should respond_with(200..299) }
  end
end
