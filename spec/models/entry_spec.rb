require 'spec_helper'

describe Entry do
  context "associations" do
  end

  context "validations" do
  end


  context "instance methods" do
  	before(:all) do
			@user = FactoryGirl.create(:jordan)
			@spreads_pool = FactoryGirl.create(:nfl_supercontest, configurations: {"spreads" => true})
			@no_spreads_pool = FactoryGirl.create(:nfl_supercontest, configurations: {"spreads" => false})
			@spreads_entry = Entry.create! user_id: @user.id, pool_id: @spreads_pool.id
			@no_spreads_entry = Entry.create! user_id: @user.id, pool_id: @no_spreads_pool.id
		end

  	describe "#total_score" do
  		it "returns the cumulative score for an entry" do
		  	matchup1 = FactoryGirl.create(:home_team_wins_and_covers)
		  	matchup2 = FactoryGirl.create(:home_team_loses_but_covers)
		  	matchup3 = FactoryGirl.create(:tie_game)
		  	matchup4 = FactoryGirl.create(:home_team_loses_and_doesnt_cover)

		  	[matchup1, matchup2, matchup3, matchup4].each do |matchup|
		  	  NflPick.create entry_id: @spreads_entry.id, nfl_matchup_id: matchup.id, locked: true, nfl_team_id: matchup.home_team_id
		  	  NflPick.create entry_id: @no_spreads_entry.id, nfl_matchup_id: matchup.id, locked: true, nfl_team_id: matchup.home_team_id
		  	end

		  	@spreads_entry.total_score(@spreads_entry.nfl_picks).should eq 0
		  	@no_spreads_entry.total_score(@no_spreads_entry.nfl_picks).should eq 0
		  	[matchup1, matchup2, matchup3, matchup4].each { |matchup| matchup.update_attributes(state: "final") }
		  	@spreads_entry.total_score(@spreads_entry.nfl_picks).should eq 3.0
		  	@no_spreads_entry.total_score(@no_spreads_entry.nfl_picks).should eq 1.5
		  end
  	end


  end

end
