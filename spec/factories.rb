require 'faker'

FactoryGirl.define do
   factory :list do |l|
      l.content { Faker::Lorem.sentence }
      l.priority { Faker::Number.digit }
   end
end
