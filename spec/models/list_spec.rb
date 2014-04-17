require 'spec_helper'

describe List do
	it "is invalid without priority" do
		list = FactoryGirl.build(:list, :priority => nil)
		list.should_not be_valid
		
		puts "List is invalid without priority"
		puts list.to_json
		puts "\n"
	end
	
	it "is invalid without content" do
		list = FactoryGirl.build(:list, :content => nil)
		list.should_not be_valid
		
		puts "List is invalid without content"
		puts list.to_json
		puts "\n"
	end
	
	it "is invalid if priority is not a integer" do
		list = FactoryGirl.build(:list, :priority => "a")
		list.should_not be_valid
		
		puts "List invalid if priority is not a integer"
		puts list.to_json
		puts "\n"
	end
	
	it "is valid if priority is a number" do
		list = FactoryGirl.build(:list)
		list.should be_valid
		
		puts "List is valid if priority is a number"
		puts list.to_json
		puts "\n"
	end
	
	it "is invalid if priority is less than 0" do
		list = FactoryGirl.build(:list, :priority=>-1)
		list.should_not be_valid
		
		puts "List is invalid if priority is less than 0"
		puts list.to_json
		puts "\n"
	end
	
	it "is invalid if priority is greater than 10" do
		list = FactoryGirl.build(:list, :priority=>11)
		list.should_not be_valid
		
		puts "List is invalid if priority is greater than 10"
		puts list.to_json
		puts "\n"
	end
	
	it "is invalid if content is empty or <space>" do
		list = FactoryGirl.build(:list, :content=>" ")
		list.should_not be_valid
		
		puts "List invalid if content is empty or <space>"
		puts list.to_json
		puts "\n"
	end
end

