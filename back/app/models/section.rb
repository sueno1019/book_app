class Section < ApplicationRecord
  validates :book_id, presence: true
  validates :sec_num, presence: true
end
