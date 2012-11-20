# == FactoryGirl for rspec test
#
FactoryGirl.define do
  # User model
  factory :user do
    name                  "fakeuser"
    email                 "fakeuser@bar.com"
    password              "foobar"
    password_confirmation "foobar"
  end

  # Bid model
  factory :bid do
    bidding_price  15
    user_id        1
    product_id     1
  end

  # Product model
  factory :product do
    title          "product test"
    start_price    5
    description    "this is a product test"
    user_id        1
    current_price  18
    category_id    1
    bid_until      "12/28/2012"
  end

  factory :category do
    content "Art"
  end

  # Review model
  factory :review do
    content        "This is a test review"
    from_user_id   1
    to_user_id     2
    product_id     1
  end
end


