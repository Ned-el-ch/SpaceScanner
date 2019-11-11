BankCard.destroy_all
Booking.destroy_all
Operator.destroy_all
Planet.destroy_all
Rocket.destroy_all
Trip.destroy_all
User.destroy_all

10.times do |i|

    User.create(

        name: Faker::Name.unique.name,
        bank_balance: rand(100_000..100_000_000),
        email: Faker::Internet.email,
        password: "pass#{i}"

    )

end

20.times do |i|

    BankCard.create(

        long_card_number: Faker::Business.credit_card_number,
        ccv_code: Faker::Stripe.ccv,
        expiry_month: Faker::Stripe.month,
        expiry_year: Faker::Stripe.year,
        user: User.all.sample,
        billing_address: Faker::Address.full_address

    )

end

route_types = ["Long Haul", "Medium Haul", "Short Haul"]

5.times do |i|

    Operator.create(

        name: Faker::TvShows::SiliconValley.company,
        range: route_types.sample

    )

end

hostility_levels = ["Low", "Medium", "High", "Extreme", "Literally Hell"]

100.times do |i|

    Planet.create(

        name: Faker::TvShows::RickAndMorty.location,
        distance_from_earth: rand(10..10_000),
        gravity: rand(0.1..7.0),
        hostility_level: hostility_levels.sample,
        population: rand(300_000_000..300_000_000_000),
        breathable_atmosphere: [true, false].sample

    )

end

Planet.where.not(id: Planet.group(:name).select("min(id)")).destroy_all

10.times do |i|

    Rocket.create(

        nickname: Faker::Movies::StarWars.vehicle,
        ship_model_name: Faker::Movies::StarWars.droid,
        speed: rand(0.01..100.0),
        passenger_capacity: (rand(40..300) * 10)

    )

end

30.times do |i|

    Trip.create(

        origin_id: Planet.all.sample.id,
        destination_id: Planet.all.sample.id,
        rocket: Rocket.all.sample,
        operator: Operator.all.sample,
        take_off_time: DateTime.iso8601("#{rand(3008..3016)}-0#{rand(1..9)}-#{rand(10..28)}", Date::ENGLAND)

    )

end