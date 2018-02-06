require 'rails_helper'

describe KatasController, type: :controller do
  context 'when no user is logged' do
    it 'new path redirects' do
      get :new
      expect(response.code).to eq("200")
    end
  end
end
