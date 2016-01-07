20.times do 
	u = User.create(
		name: Faker::Internet.user_name,
		email: Faker::Internet.email
	)
	10.times do
		u.products.create(
			title: Faker::Commerce.product_name,
			description: Faker::Lorem.paragraph,
			deadline: Faker::Time.forward(14,:evening)
			)
	end
end