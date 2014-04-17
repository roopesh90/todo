FactoryGirl.define do
   factory :list do
      content 'TestList'
      priority { 1 + rand(10) }
   end
end
