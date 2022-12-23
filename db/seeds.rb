# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

language1 = Language.create({name: "English US", code: "EN us"})
language2 = Language.create({name: "Thai", code: "TH"})

tableFile = TableFile.create(:name => "discord", :description => "discord phrase")
key1 = tableFile.keys.create(:key => "general.back", :description => "from ios")
key2 = tableFile.keys.create(:key => "general.submit", :description => "from ios")

key1.phrases.create(:language => language1, :phrase => "back")
key1.phrases.create(:language => language2, :phrase => "กลับ")

key2.phrases.create(:language => language1, :phrase => "submit")
key2.phrases.create(:language => language2, :phrase => "ยืนยัน")


