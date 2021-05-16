class AddSecSumToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :book_sum, :text, :after => :image
  end
end
