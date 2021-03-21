require 'rails_helper'

RSpec.describe Book, type: :model do
    it '正常テスト' do
        @book = Book.new(
            title: 'test',
            author: 'test-author',
            image: 'test.png'
        )
        expect(@book).to be_valid
    end
end 