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

        long_card_number: Faker::Stripe.valid_card,
        ccv_code: Faker::Stripe.ccv,
        expiry_month: Faker::Stripe.month,
        expiry_year: Faker::Stripe.year,
        user: User.all.sample,
        billing_address: Faker::Address.full_address

    )

end