require 'rails_helper'

RSpec.describe Book, type: :request do
  # frozen_string_literal: true

  require 'rails_helper'

  describe 'Book' do
    before(:each) do
      @status_code_ok = 200
    end
    it 'Bookを表示' do
      @user = FactoryBot.create(:book)
      get '/api/v1/books'
      @json = JSON.parse(response.body)
      expect(response.status).to eq(@status_code_ok)
    end
  end

  describe 'Section' do
    before(:each) do
        @status_code_ok = 200
      end
      it 'Sectionを表示' do
        @user = FactoryBot.create(:section)
        get '/api/v1/sections/1'
        @json = JSON.parse(response.body)
        expect(response.status).to eq(@status_code_ok)
      end
  end
end