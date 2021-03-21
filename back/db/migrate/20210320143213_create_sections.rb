class CreateSections < ActiveRecord::Migration[6.1]
  def change
    create_table :sections do |t|
      t.bigint :book_id
      t.string :name
      t.integer :sec_num
      t.text :sec_sum

      t.timestamps
    end
  end
end
