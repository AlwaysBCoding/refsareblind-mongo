require 'spec_helper'

describe NflMatchup do
  context "associations" do
  end

  context "validations" do
  end

  context "callbacks" do
  end

  context "instance_methods" do
  	before(:all) do
  		@matchup1 = FactoryGirl.create(:home_team_wins_and_covers, state: "final")
  		@matchup2 = FactoryGirl.create(:home_team_loses_but_covers, state: "final")
  		@matchup3 = FactoryGirl.create(:tie_game, state: "final")
  	end

  	describe "#winning_team" do
  		it "returns the correct winning team" do
  			@matchup1.winning_team.should eq @matchup1.home_team_id
  			@matchup2.winning_team.should eq @matchup2.away_team_id
  			@matchup3.winning_team.should eq "tie"
  		end
  	end

  	describe "#winning_team_with_spread" do
  		it "returns the correct winning team taking into account the spread" do
  			@matchup1.winning_team_with_spread.should eq @matchup1.home_team_id
  			@matchup2.winning_team_with_spread.should eq @matchup2.home_team_id
  			@matchup3.winning_team_with_spread.should eq @matchup3.home_team_id
  		end
  	end

  end

end
