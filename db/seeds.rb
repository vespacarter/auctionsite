20.times do 
	u = User.create(
		name: Faker::Internet.user_name,
		email: Faker::Internet.email
	)
	10.times do
		producttitle = Faker::Commerce.product_name
		productpicture = "http://lorempixel.com/500/500/technics/" + producttitle
		u.products.create(
			title: producttitle,
			description: Faker::Lorem.paragraph,
			pic: productpicture,
			deadline: Faker::Time.forward(14,:evening)
			)
	end
end