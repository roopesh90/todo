require 'spec_helper'

describe List do
	it "is invalid without priority" do
		FactoryGirl.build(:list, :priority => nil).should_not be_valid
	end
	
	it "is invalid without content" do
		list = FactoryGirl.build(:list, :content => nil)
		list.should_not be_valid  
	end
end

