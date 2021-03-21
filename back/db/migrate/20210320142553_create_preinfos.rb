class CreatePreinfos < ActiveRecord::Migration[6.1]
  def change
    create_table :preinfos do |t|
      t.bigint :book_id
      t.string :question

      t.timestamps
    end
  end
end
