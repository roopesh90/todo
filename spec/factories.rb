FactoryGirl.define do
   factory :event do
      name 'TestEvent'
      start_time { Time.now }
   end
end
