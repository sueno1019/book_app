# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |n|
  Book.create!(
    title: "book#{n+1}",
    author: "auhtor#{n+1}",
    image: open("./db/fixtures/#{n+1}.jpg")
  )
  5.times do |m|
  Section.create!(
      book_id: n+1,
      name: "section#{m+1}",
      sec_num: m+1,
      sec_sum: "a" * 200
    )
  end
end

