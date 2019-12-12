# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.create([
	{ 
		title: "Cara Membuat Wajah Bersih", 
		content: "Tutorial membuat wajah terlihat bersih", 
		status: "Rilis"
	},
	{
		title: "Cara Membuat Rambut Berkilau", 
		content: "Tutorial membuat rambut bersih berkilau", 
		status: "Rilis"
	},
	{
		title: "Tips and Trik CPNS", 
		content: "Kiat-kiat menjadi PNS", 
		status: "Belum Rilis"
	},
	{
		title: "Tips and Trik Hijrah", 
		content: "Langkah-langkah hijrah", 
		status: "Belum Rilis"
	},
	{
		title: "Tips and Trik Bermain Game", 
		content: "Langkah-langkah menjadi gamer yang handal", 
		status: "Belum Rilis"
	}
])