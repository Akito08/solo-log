shop = Shop.new(name: "ロージナ茶房", address: "東京都国立市中1-9-42", latitude: 35.697895, longitude: 139.44615)
shop.save!
shop = Shop.new(name: "深川つり舟", address: "東京都国立市東1-15-18 白野ビル２Ｆ", latitude: 35.69761231017552, longitude: 139.44751453873903)
shop.save!

Shop.all.each do |shop|
  10.times do
    review = shop.reviews.build(rate: rand(1..5),
                        comment: Faker::Lorem.paragraph(sentence_count: 4),
                        counter_sheets_available: [true, false].sample,
                        solo_tables_available: [true, false].sample,
                        frequent_solo_visitors: rand(1..5),
                        easy_to_order: rand(1..5),
                        delivery_speed: rand(1..5),
                        calmness: rand(1..5))
    review.save!
  end
end
