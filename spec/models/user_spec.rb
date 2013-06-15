require 'spec_helper'

describe User do

	context "associations" do
	end

	context "validations" do
	end

	context "authorizations" do
		before(:all) do
			@jordan = FactoryGirl.create(:jordan)
			@andrew = FactoryGirl.create(:andrew)
			@supercontest = FactoryGirl.create(:nfl_supercontest)
		end

		describe "#authorized_for_action_in_pool?" do

			it "prevents a user from updating an entries approval unless they are an authorized" do
				jordans_entry = @jordan.entries.create! pool_id: @supercontest.id, role: 'owner'
				andrews_entry = @andrew.entries.create! pool_id: @supercontest.id

				@andrew.authorized_for_action_in_pool?("approve-entry", @supercontest).should be_false
				@jordan.authorized_for_action_in_pool?("approve-entry", @supercontest).should be_true
			end

		end

	end

end
