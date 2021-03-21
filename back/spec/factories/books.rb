# frozen_string_literal: true

FactoryBot.define do
    factory :book do
      title { 'test' }
      author {'testauthor'}
      image {'test.png'}
    end
    factory :section do
        name {'test'}
        sec_num {1}
        sec_sum {'testsummary'}
        book_id {1}
    end
end