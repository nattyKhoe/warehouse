puts "Seeding warehouse items"
Items.destroy_all
Manufacturer.destroy_all
InvoiceIn.destroy_all
InvoiceOut.destroy_all
Store.destroy_all
User.destroy_all
InvoiceOutItem.destroy_all
InvoiceInItem.destroy_all

user = User.create!(
    first_name: "Admin",
    last_name: "Khoe",
    account_type: "admin",
    username: "AdminK",
    password: "123456",
    password_confirmation: "123546"
)
user1 = User.create!(
    first_name: "Priviledge",
    last_name: "P",
    account_type: "priviledge",
    username: "PriviledgeP",
    password: "123456",
    password_confirmation: "123546"
)

user2 = User.create!(
    first_name: "User",
    last_name: "U",
    account_type: "user",
    username: "UserU"
    password: "123456",
    password_confirmation: "123546"
)

5.times do 
    Manufacturer.create!(
        ABN: Faker::Company.australian_business_number,
        manufacturer_code: Faker::IDNumber.croatian_id(international: true),
        address: Faker::Address.street_address,
        city: Faker::Address.city,
        manufacturer_name: Faker::Company.name
    )
    Store.create!(
        ABN: Faker::Company.australian_business_number,
        store_code: Faker::IDNumber.chilean_id,
        address: Faker::Address.street_address,
        city: Faker::Address.city,
        store_name: Faker::Company.name,
        store_discount: rand(0..8),
        store_plafond: Faker::Number.number(5)
    )
end

10.times do |index|
    Item.create!(
        barcode: Faker::Barcode.ean,
        category: Faker::Company.industry,
        manufacturer_id: rand(1..5),
        buy_price: Faker::Number.decimal(l_digits: 2),
        sell_price: Faker::Number.decimal(l_digits: 2),
        item_name: Faker::Food.ingredient
    )
end

