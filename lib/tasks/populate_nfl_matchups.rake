namespace :seed_data do
	desc "Populates nfl_matchups with the 2012-2013 NFL schedule and results"
	task :populate_2012_nfl_matchups => :environment do

		patriots = NflTeam.where(name: "patriots").first
		jets = NflTeam.where(name: "jets").first
		dolphins = NflTeam.where(name: "dolphins").first
		bills = NflTeam.where(name: "bills").first

		steelers = NflTeam.where(name: "steelers").first
		ravens = NflTeam.where(name: "ravens").first
		bengals = NflTeam.where(name: "bengals").first
		browns = NflTeam.where(name: "browns").first

		colts = NflTeam.where(name: "colts").first
		titans = NflTeam.where(name: "titans").first
		jaguars = NflTeam.where(name: "jaguars").first
		texans = NflTeam.where(name: "texans").first

		chargers = NflTeam.where(name: "chargers").first
		broncos = NflTeam.where(name: "broncos").first
		raiders = NflTeam.where(name: "raiders").first
		chiefs = NflTeam.where(name: "chiefs").first

		redskins = NflTeam.where(name: "redskins").first
		cowboys = NflTeam.where(name: "cowboys").first
		giants = NflTeam.where(name: "giants").first
		eagles = NflTeam.where(name: "eagles").first

		vikings = NflTeam.where(name: "vikings").first
		packers = NflTeam.where(name: "packers").first
		lions = NflTeam.where(name: "lions").first
		bears = NflTeam.where(name: "bears").first

		saints = NflTeam.where(name: "saints").first
		panthers = NflTeam.where(name: "panthers").first
		buccaneers = NflTeam.where(name: "buccaneers").first
		falcons = NflTeam.where(name: "falcons").first

		sf_49ers = NflTeam.where(name: "49ers").first
		seahawks = NflTeam.where(name: "seahawks").first
		rams = NflTeam.where(name: "rams").first
		cardinals = NflTeam.where(name: "cardinals").first

###

	NflMatchup.destroy_all

	# INTERVAL 1
		NflMatchup.create! away_team_id: cowboys.id, home_team_id: giants.id, interval: 1, home_team_score: 17, away_team_score: 24, point_spread: 3.5
		NflMatchup.create! away_team_id: colts.id, home_team_id: bears.id, interval: 1, home_team_score: 41, away_team_score: 21, point_spread: 10
		NflMatchup.create! away_team_id: falcons.id, home_team_id: chiefs.id, interval: 1, home_team_score: 24, away_team_score: 40, point_spread: -1
		NflMatchup.create! away_team_id: eagles.id, home_team_id: browns.id, interval: 1, away_team_score: 17, home_team_score: 16, point_spread: -9
		NflMatchup.create! away_team_id: redskins.id, home_team_id: saints.id, interval: 1, away_team_score: 40, home_team_score: 32, point_spread: 8
		NflMatchup.create! away_team_id: rams.id, home_team_id: lions.id, interval: 1, away_team_score: 23, home_team_score: 27, point_spread: 9
		NflMatchup.create! away_team_id: patriots.id, home_team_id: titans.id, interval: 1, away_team_score: 34, home_team_score: 13, point_spread: -4.5
		NflMatchup.create! away_team_id: jaguars.id, home_team_id: vikings.id, interval: 1, away_team_score: 23, home_team_score: 26, point_spread: 3.5
		NflMatchup.create! away_team_id: bills.id, home_team_id: jets.id, interval: 1, away_team_score: 28, home_team_score: 48, point_spread: 3
		NflMatchup.create! away_team_id: dolphins.id, home_team_id: texans.id, interval: 1, away_team_score: 10, home_team_score: 30, point_spread: 13
		NflMatchup.create! away_team_id: seahawks.id, home_team_id: cardinals.id, interval: 1, away_team_score: 16, home_team_score: 20, point_spread: -1
		NflMatchup.create! away_team_id: sf_49ers.id, home_team_id: packers.id, interval: 1, away_team_score: 30, home_team_score: 22, point_spread: 6
		NflMatchup.create! away_team_id: panthers.id, home_team_id: buccaneers.id, interval: 1, away_team_score: 10, home_team_score: 16, point_spread: -3
		NflMatchup.create! away_team_id: steelers.id, home_team_id: broncos.id, interval: 1, away_team_score: 19, home_team_score: 31, point_spread: 2.5
		NflMatchup.create! away_team_id: bengals.id, home_team_id: ravens.id, interval: 1, away_team_score: 13, home_team_score: 44, point_spread: 7
		NflMatchup.create! away_team_id: chargers.id, home_team_id: raiders.id, interval: 1, away_team_score: 22, home_team_score: 14, point_spread: 1

	# INTERVAL 2
		NflMatchup.create! away_team_id: bears.id, home_team_id: packers.id, away_team_score: 10, home_team_score: 23, point_spread: 5, interval: 2
		NflMatchup.create! away_team_id: raiders.id, home_team_id: dolphins.id, away_team_score: 13, home_team_score: 35, point_spread: -1, interval: 2
		NflMatchup.create! away_team_id: texans.id, home_team_id: jaguars.id, away_team_score: 27, home_team_score: 7, point_spread: -6.5, interval: 2
		NflMatchup.create! away_team_id: vikings.id, home_team_id: colts.id, away_team_score: 20, home_team_score: 23, point_spread: -3, interval: 2
		NflMatchup.create! away_team_id: saints.id, home_team_id: panthers.id, away_team_score: 27, home_team_score: 35, point_spread: -3, interval: 2
		NflMatchup.create! away_team_id: browns.id, home_team_id: bengals.id, away_team_score: 27, home_team_score: 34, point_spread: 7, interval: 2
		NflMatchup.create! away_team_id: cardinals.id, home_team_id: patriots.id, away_team_score: 20, home_team_score: 18, point_spread: 13, interval: 2
		NflMatchup.create! away_team_id: ravens.id, home_team_id: eagles.id, away_team_score: 23, home_team_score: 24, point_spread: 3, interval: 2
		NflMatchup.create! away_team_id: buccaneers.id, home_team_id: giants.id, away_team_score: 34, home_team_score: 41, point_spread: 9, interval: 2
		NflMatchup.create! away_team_id: chiefs.id, home_team_id: bills.id, away_team_score: 17, home_team_score: 35, point_spread: 3, interval: 2
		NflMatchup.create! away_team_id: cowboys.id, home_team_id: seahawks.id, away_team_score: 7, home_team_score: 27, point_spread: -3, interval: 2
		NflMatchup.create! away_team_id: redskins.id, home_team_id: rams.id, away_team_score: 28, home_team_score: 31, point_spread: -3.5, interval: 2
		NflMatchup.create! away_team_id: jets.id, home_team_id: steelers.id, away_team_score: 10, home_team_score: 27, point_spread: 4.5, interval: 2
		NflMatchup.create! away_team_id: titans.id, home_team_id: chargers.id, away_team_score: 10, home_team_score: 38, point_spread: 6.5, interval: 2
		NflMatchup.create! away_team_id: lions.id, home_team_id: sf_49ers.id, away_team_score: 19, home_team_score: 27, point_spread: 7, interval: 2
		NflMatchup.create! away_team_id: broncos.id, home_team_id: falcons.id, away_team_score: 21, home_team_score: 27, point_spread: 3, interval: 2

	# INTERVAL 3
		NflMatchup.create! away_team_id: giants.id, home_team_id: panthers.id, away_team_score: 36, home_team_score: 7, point_spread: 2.5, interval: 3
		NflMatchup.create! away_team_id: rams.id, home_team_id: bears.id, away_team_score: 6, home_team_score: 23, point_spread: 7, interval: 3
		NflMatchup.create! away_team_id: buccaneers.id, home_team_id: cowboys.id, away_team_score: 10, home_team_score: 16, point_spread: 9, interval: 3
		NflMatchup.create! away_team_id: sf_49ers.id, home_team_id: vikings.id, away_team_score: 13, home_team_score: 24, point_spread: -6.5, interval: 3
		NflMatchup.create! away_team_id: bengals.id, home_team_id: redskins.id, away_team_score: 38, home_team_score: 31, point_spread: 3, interval: 3
		NflMatchup.create! away_team_id: jaguars.id, home_team_id: colts.id, away_team_score: 22, home_team_score: 17, point_spread: 3, interval: 3
		NflMatchup.create! away_team_id: bills.id, home_team_id: browns.id, away_team_score: 24, home_team_score: 14, point_spread: -2.5, interval: 3
		NflMatchup.create! away_team_id: lions.id, home_team_id: titans.id, away_team_score: 41, home_team_score: 44, point_spread: -3.5, interval: 3
		NflMatchup.create! away_team_id: jets.id, home_team_id: dolphins.id, away_team_score: 23, home_team_score: 20, point_spread: -1, interval: 3
		NflMatchup.create! away_team_id: chiefs.id, home_team_id: saints.id, away_team_score: 27, home_team_score: 24, point_spread: 9, interval: 3
		NflMatchup.create! away_team_id: falcons.id, home_team_id: chargers.id, away_team_score: 27, home_team_score: 3, point_spread: 3, interval: 3
		NflMatchup.create! away_team_id: eagles.id, home_team_id: cardinals.id, away_team_score: 6, home_team_score: 27, point_spread: -3, interval: 3
		NflMatchup.create! away_team_id: steelers.id, home_team_id: raiders.id, away_team_score: 31, home_team_score: 34, point_spread: -3.5, interval: 3
		NflMatchup.create! away_team_id: texans.id, home_team_id: broncos.id, away_team_score: 31, home_team_score: 25, point_spread: -1, interval: 3
		NflMatchup.create! away_team_id: patriots.id, home_team_id: ravens.id, away_team_score: 30, home_team_score: 31, point_spread: 2.5, interval: 3
		NflMatchup.create! away_team_id: packers.id, home_team_id: seahawks.id, away_team_score: 12, home_team_score: 14, point_spread: -3, interval: 3

	# INTERVAL 4
		NflMatchup.create! away_team_id: browns.id, home_team_id: ravens.id, away_team_score: 16, home_team_score: 23, point_spread: 11.5, interval: 4
		NflMatchup.create! away_team_id: panthers.id, home_team_id: falcons.id, away_team_score: 28, home_team_score: 30, point_spread: 7, interval: 4
		NflMatchup.create! away_team_id: vikings.id, home_team_id: lions.id, away_team_score: 20, home_team_score: 13, point_spread: 3.5, interval: 4
		NflMatchup.create! away_team_id: titans.id, home_team_id: texans.id, away_team_score: 14, home_team_score: 38, point_spread: 13, interval: 4
		NflMatchup.create! away_team_id: sf_49ers.id, home_team_id: jets.id, away_team_score: 34, home_team_score: 0, point_spread: -3.5, interval: 4
		NflMatchup.create! away_team_id: seahawks.id, home_team_id: rams.id, away_team_score: 13, home_team_score: 19, point_spread: -2, interval: 4
		NflMatchup.create! away_team_id: patriots.id, home_team_id: bills.id, away_team_score: 52, home_team_score: 28, point_spread: -3.5, interval: 4
		NflMatchup.create! away_team_id: chargers.id, home_team_id: chiefs.id, away_team_score: 37, home_team_score: 20, point_spread: -1, interval: 4
		NflMatchup.create! away_team_id: dolphins.id, home_team_id: cardinals.id, away_team_score: 21, home_team_score: 24, point_spread: 4, interval: 4
		NflMatchup.create! away_team_id: raiders.id, home_team_id: broncos.id, away_team_score: 6, home_team_score: 37, point_spread: 6.5, interval: 4
		NflMatchup.create! away_team_id: bengals.id, home_team_id: jaguars.id, away_team_score: 27, home_team_score: 10, point_spread: 1, interval: 4
		NflMatchup.create! away_team_id: saints.id, home_team_id: packers.id, away_team_score: 27, home_team_score: 28, point_spread: 7.5, interval: 4
		NflMatchup.create! away_team_id: redskins.id, home_team_id: buccaneers.id, away_team_score: 24, home_team_score: 22, point_spread: 1.5, interval: 4
		NflMatchup.create! away_team_id: giants.id, home_team_id: eagles.id, away_team_score: 17, home_team_score: 19, point_spread: 2, interval: 4
		NflMatchup.create! away_team_id: bears.id, home_team_id: cowboys.id, away_team_score: 34, home_team_score: 18, point_spread: 3, interval: 4

	# INTERVAL 5
		NflMatchup.create! away_team_id: cardinals.id, home_team_id: rams.id, away_team_score: 3, home_team_score: 17, point_spread: -2, interval: 5
		NflMatchup.create! away_team_id: browns.id, home_team_id: giants.id, away_team_score: 27, home_team_score: 41, point_spread: 7.5, interval: 5
		NflMatchup.create! away_team_id: ravens.id, home_team_id: chiefs.id, away_team_score: 9, home_team_score: 6, point_spread: -6, interval: 5
		NflMatchup.create! away_team_id: dolphins.id, home_team_id: bengals.id, away_team_score: 17, home_team_score: 13, point_spread: 3, interval: 5
		NflMatchup.create! away_team_id: eagles.id, home_team_id: steelers.id, away_team_score: 14, home_team_score: 16, point_spread: 4, interval: 5
		NflMatchup.create! away_team_id: packers.id, home_team_id: colts.id, away_team_score: 27, home_team_score: 30, point_spread: -6.5, interval: 5
		NflMatchup.create! away_team_id: falcons.id, home_team_id: redskins.id, away_team_score: 24, home_team_score: 17, point_spread: -3, interval: 5
		NflMatchup.create! away_team_id: bears.id, home_team_id: jaguars.id, away_team_score: 41, home_team_score: 3, point_spread: -6, interval: 5
		NflMatchup.create! away_team_id: seahawks.id, home_team_id: panthers.id, away_team_score: 16, home_team_score: 12, point_spread: 1, interval: 5
		NflMatchup.create! away_team_id: titans.id, home_team_id: vikings.id, away_team_score: 7, home_team_score: 30, point_spread: 6, interval: 5
		NflMatchup.create! away_team_id: bills.id, home_team_id: sf_49ers.id, away_team_score: 3, home_team_score: 45, point_spread: 10, interval: 5
		NflMatchup.create! away_team_id: broncos.id, home_team_id: patriots.id, away_team_score: 21, home_team_score: 31, point_spread: 5.5, interval: 5
		NflMatchup.create! away_team_id: chargers.id, home_team_id: saints.id, away_team_score: 24, home_team_score: 31, point_spread: 3.5, interval: 5
		NflMatchup.create! away_team_id: texans.id, home_team_id: jets.id, away_team_score: 23, home_team_score: 17, point_spread: -9.5, interval: 5

	# INTERVAL 6
		NflMatchup.create! away_team_id: steelers.id, home_team_id: titans.id, away_team_score: 23, home_team_score: 26, point_spread: -5.5, interval: 6
		NflMatchup.create! away_team_id: lions.id, home_team_id: eagles.id, away_team_score: 26, home_team_score: 23, point_spread: 3.5, interval: 6
		NflMatchup.create! away_team_id: colts.id, home_team_id: jets.id, away_team_score: 9, home_team_score: 35, point_spread: 3.5, interval: 6
		NflMatchup.create! away_team_id: chiefs.id, home_team_id: buccaneers.id, away_team_score: 10, home_team_score: 38, point_spread: 5, interval: 6
		NflMatchup.create! away_team_id: raiders.id, home_team_id: falcons.id, away_team_score: 20, home_team_score: 23, point_spread: 10, interval: 6
		NflMatchup.create! away_team_id: cowboys.id, home_team_id: ravens.id, away_team_score: 29, home_team_score: 31, point_spread: 3, interval: 6
		NflMatchup.create! away_team_id: bengals.id, home_team_id: browns.id, away_team_score: 24, home_team_score: 34, point_spread: -1, interval: 6
		NflMatchup.create! away_team_id: rams.id, home_team_id: dolphins.id, away_team_score: 14, home_team_score: 17, point_spread: 5.5, interval: 6
		NflMatchup.create! away_team_id: patriots.id, home_team_id: seahawks.id, away_team_score: 23, home_team_score: 24, point_spread: -3.5, interval: 6
		NflMatchup.create! away_team_id: bills.id, home_team_id: cardinals.id, away_team_score: 19, home_team_score: 16, point_spread: 5, interval: 6
		NflMatchup.create! away_team_id: giants.id, home_team_id: sf_49ers.id, away_team_score: 26, home_team_score: 3, point_spread: 7, interval: 6
		NflMatchup.create! away_team_id: vikings.id, home_team_id: redskins.id, away_team_score: 26, home_team_score: 38, point_spread: -1, interval: 6
		NflMatchup.create! away_team_id: packers.id, home_team_id: seahawks.id, away_team_score: 42, home_team_score: 24, point_spread: 4, interval: 6
		NflMatchup.create! away_team_id: broncos.id, home_team_id: chargers.id, away_team_score: 35, home_team_score: 24, point_spread: 1, interval: 6

	# INTERVAL 7
		NflMatchup.create! away_team_id: seahawks.id, home_team_id: sf_49ers.id, away_team_score: 6, home_team_score: 13, point_spread: 7.5, interval: 7
		NflMatchup.create! away_team_id: cardinals.id, home_team_id: vikings.id, away_team_score: 14, home_team_score: 21, point_spread: 7, interval: 7
		NflMatchup.create! away_team_id: packers.id, home_team_id: rams.id, away_team_score: 30, home_team_score: 20, point_spread: -4, interval: 7
		NflMatchup.create! away_team_id: redskins.id, home_team_id: giants.id, away_team_score: 23, home_team_score: 27, point_spread: 6.5, interval: 7
		NflMatchup.create! away_team_id: saints.id, home_team_id: buccaneers.id, away_team_score: 35, home_team_score: 28, point_spread: -1, interval: 7
		NflMatchup.create! away_team_id: cowboys.id, home_team_id: panthers.id, away_team_score: 19, home_team_score: 14, point_spread: -1, interval: 7
		NflMatchup.create! away_team_id: ravens.id, home_team_id: texans.id, away_team_score: 13, home_team_score: 43, point_spread: 6.5, interval: 7
		NflMatchup.create! away_team_id: browns.id, home_team_id: colts.id, away_team_score: 13, home_team_score: 17, point_spread: 1, interval: 7
		NflMatchup.create! away_team_id: titans.id, home_team_id: bills.id, away_team_score: 35, home_team_score: 34, point_spread: 4, interval: 7
		NflMatchup.create! away_team_id: jaguars.id, home_team_id: raiders.id, away_team_score: 23, home_team_score: 26, point_spread: 6, interval: 7
		NflMatchup.create! away_team_id: jets.id, home_team_id: patriots.id, away_team_score: 26, home_team_score: 29, point_spread: 11, interval: 7
		NflMatchup.create! away_team_id: steelers.id, home_team_id: bengals.id, away_team_score: 24, home_team_score: 17, point_spread: -1, interval: 7
		NflMatchup.create! away_team_id: lions.id, home_team_id: bears.id, away_team_score: 7, home_team_score: 13, point_spread: 6.5, interval: 7

	# INTERVAL 8
		NflMatchup.create! away_team_id: buccaneers.id, home_team_id: vikings.id, away_team_score: 36, home_team_score: 17, point_spread: 5.5, interval: 8
		NflMatchup.create! away_team_id: colts.id, home_team_id: titans.id, away_team_score: 19, home_team_score: 13, point_spread: 3.5, interval: 8
		NflMatchup.create! away_team_id: falcons.id, home_team_id: eagles.id, away_team_score: 30, home_team_score: 17, point_spread: 3, interval: 8
		NflMatchup.create! away_team_id: redskins.id, home_team_id: steelers.id, away_team_score: 12, home_team_score: 27, point_spread: 4.5, interval: 8
		NflMatchup.create! away_team_id: patriots.id, home_team_id: rams.id, away_team_score: 45, home_team_score: 7, point_spread: -7.5, interval: 8
		NflMatchup.create! away_team_id: seahawks.id, home_team_id: lions.id, away_team_score: 24, home_team_score: 28, point_spread: 2.5, interval: 8
		NflMatchup.create! away_team_id: dolphins.id, home_team_id: jets.id, away_team_score: 30, home_team_score: 9, point_spread: 1, interval: 8
		NflMatchup.create! away_team_id: jaguars.id, home_team_id: packers.id, away_team_score: 15, home_team_score: 24, point_spread: 15, interval: 8
		NflMatchup.create! away_team_id: panthers.id, home_team_id: bears.id, away_team_score: 22, home_team_score: 23, point_spread: 7, interval: 8
		NflMatchup.create! away_team_id: chargers.id, home_team_id: browns.id, away_team_score: 6, home_team_score: 7, point_spread: -2.5, interval: 8
		NflMatchup.create! away_team_id: raiders.id, home_team_id: chiefs.id, away_team_score: 26, home_team_score: 16, point_spread: 1, interval: 8
		NflMatchup.create! away_team_id: giants.id, home_team_id: cowboys.id, away_team_score: 29, home_team_score: 24, point_spread: -1.5, interval: 8
		NflMatchup.create! away_team_id: saints.id, home_team_id: broncos.id, away_team_score: 14, home_team_score: 34, point_spread: 6, interval: 8
		NflMatchup.create! away_team_id: sf_49ers.id, home_team_id: cardinals.id, away_team_score: 24, home_team_score: 3, point_spread: -7, interval: 8

	# INTERVAL 9
		NflMatchup.create! away_team_id: chiefs.id, home_team_id: chargers.id, away_team_score: 13, home_team_score: 31, point_spread: 7.5, interval: 9
		NflMatchup.create! away_team_id: bills.id, home_team_id: texans.id, away_team_score: 9, home_team_score: 21, point_spread: -11, interval: 9
		NflMatchup.create! away_team_id: cardinals.id, home_team_id: packers.id, away_team_score: 17, home_team_score: 31, point_spread: 10.5, interval: 9
		NflMatchup.create! away_team_id: lions.id, home_team_id: jaguars.id, away_team_score: 31, home_team_score: 14, point_spread: -6, interval: 9
		NflMatchup.create! away_team_id: ravens.id, home_team_id: browns.id, away_team_score: 25, home_team_score: 15, point_spread: -3.5, interval: 9
		NflMatchup.create! away_team_id: dolphins.id, home_team_id: colts.id, away_team_score: 20, home_team_score: 23, point_spread: -2.5, interval: 9
		NflMatchup.create! away_team_id: broncos.id, home_team_id: bengals.id, away_team_score: 31, home_team_score: 23, point_spread: -5, interval: 9
		NflMatchup.create! away_team_id: bears.id, home_team_id: titans.id, away_team_score: 51, home_team_score: 20, point_spread: -4.5, interval: 9
		NflMatchup.create! away_team_id: panthers.id, home_team_id: redskins.id, away_team_score: 21, home_team_score: 13, point_spread: 3, interval: 9
		NflMatchup.create! away_team_id: vikings.id, home_team_id: seahawks.id, away_team_score: 20, home_team_score: 30, point_spread: 4.5, interval: 9
		NflMatchup.create! away_team_id: buccaneers.id, home_team_id: raiders.id, away_team_score: 42, home_team_score: 32, point_spread: 1, interval: 9
		NflMatchup.create! away_team_id: steelers.id, home_team_id: giants.id, away_team_score: 24, home_team_score: 20, point_spread: 3.5, interval: 9
		NflMatchup.create! away_team_id: cowboys.id, home_team_id: falcons.id, away_team_score: 13, home_team_score: 19, point_spread: 4, interval: 9
		NflMatchup.create! away_team_id: eagles.id, home_team_id: saints.id, away_team_score: 13, home_team_score: 28, point_spread: 2.5, interval: 9

	# INTERVAL 10
		NflMatchup.create! away_team_id: colts.id, home_team_id: jaguars.id, away_team_score: 27, home_team_score: 10, point_spread: -3, interval: 10
		NflMatchup.create! away_team_id: bills.id, home_team_id: patriots.id, away_team_score: 31, home_team_score: 37, point_spread: 13.5, interval: 10
		NflMatchup.create! away_team_id: lions.id, home_team_id: vikings.id, away_team_score: 24, home_team_score: 34, point_spread: -3, interval: 10
		NflMatchup.create! away_team_id: broncos.id, home_team_id: panthers.id, away_team_score: 36, home_team_score: 14, point_spread: -3.5, interval: 10
		NflMatchup.create! away_team_id: giants.id, home_team_id: bengals.id, away_team_score: 13, home_team_score: 31, point_spread: -3.5, interval: 10
		NflMatchup.create! away_team_id: falcons.id, home_team_id: saints.id, away_team_score: 27, home_team_score: 31, point_spread: -1, interval: 10
		NflMatchup.create! away_team_id: chargers.id, home_team_id: buccaneers.id, away_team_score: 24, home_team_score: 34, point_spread: 3, interval: 10
		NflMatchup.create! away_team_id: titans.id, home_team_id: dolphins.id, away_team_score: 37, home_team_score: 3, point_spread: 6.5, interval: 10
		NflMatchup.create! away_team_id: raiders.id, home_team_id: ravens.id, away_team_score: 20, home_team_score: 55, point_spread: 9.5, interval: 10
		NflMatchup.create! away_team_id: jets.id, home_team_id: seahawks.id, away_team_score: 7, home_team_score: 28, point_spread: 5, interval: 10
		NflMatchup.create! away_team_id: rams.id, home_team_id: sf_49ers.id, away_team_score: 24, home_team_score: 24, point_spread: 13.5, interval: 10
		NflMatchup.create! away_team_id: cowboys.id, home_team_id: eagles.id, away_team_score: 38, home_team_score: 23, point_spread: -1, interval: 10
		NflMatchup.create! away_team_id: texans.id, home_team_id: bears.id, away_team_score: 13, home_team_score: 6, point_spread: 1, interval: 10
		NflMatchup.create! away_team_id: chiefs.id, home_team_id: steelers.id, away_team_score: 13, home_team_score: 16, point_spread: 12.5, interval: 10

	# INTERVAL 11
		NflMatchup.create! away_team_id: dolphins.id, home_team_id: bills.id, away_team_score: 14, home_team_score: 19, point_spread: 1, interval: 11
		NflMatchup.create! away_team_id: browns.id, home_team_id: cowboys.id, away_team_score: 20, home_team_score: 23, point_spread: 7, interval: 11
		NflMatchup.create! away_team_id: bengals.id, home_team_id: chiefs.id, away_team_score: 28, home_team_score: 6, point_spread: -3, interval: 11
		NflMatchup.create! away_team_id: jets.id, home_team_id: rams.id, away_team_score: 27, home_team_score: 13, point_spread: 3.5, interval: 11
		NflMatchup.create! away_team_id: buccaneers.id, home_team_id: panthers.id, away_team_score: 27, home_team_score: 21, point_spread: -1, interval: 11
		NflMatchup.create! away_team_id: jaguars.id, home_team_id: texans.id, away_team_score: 37, home_team_score: 43, point_spread: 15, interval: 11
		NflMatchup.create! away_team_id: packers.id, home_team_id: lions.id, away_team_score: 24, home_team_score: 20, point_spread: -3, interval: 11
		NflMatchup.create! away_team_id: cardinals.id, home_team_id: falcons.id, away_team_score: 19, home_team_score: 23, point_spread: 9.5, interval: 11
		NflMatchup.create! away_team_id: eagles.id, home_team_id: redskins.id, away_team_score: 6, home_team_score: 31, point_spread: 3.5, interval: 11
		NflMatchup.create! away_team_id: saints.id, home_team_id: raiders.id, away_team_score: 38, home_team_score: 17, point_spread: -6, interval: 11
		NflMatchup.create! away_team_id: chargers.id, home_team_id: broncos.id, away_team_score: 23, home_team_score: 30, point_spread: 7.5, interval: 11
		NflMatchup.create! away_team_id: colts.id, home_team_id: patriots.id, away_team_score: 24, home_team_score: 59, point_spread: 10, interval: 11
		NflMatchup.create! away_team_id: ravens.id, home_team_id: steelers.id, away_team_score: 13, home_team_score: 10, point_spread: -3, interval: 11
		NflMatchup.create! away_team_id: bears.id, home_team_id: sf_49ers.id, away_team_score: 7, home_team_score: 32, point_spread: 3.5, interval: 11

	# INTERVAL 12
		NflMatchup.create! away_team_id: texans.id, home_team_id: lions.id, away_team_score: 34, home_team_score: 31, point_spread: -3.5, interval: 12
		NflMatchup.create! away_team_id: redskins.id, home_team_id: cowboys.id, away_team_score: 38, home_team_score: 31, point_spread: 3.5, interval: 12
		NflMatchup.create! away_team_id: patriots.id, home_team_id: jets.id, away_team_score: 49, home_team_score: 19, point_spread: -7, interval: 12
		NflMatchup.create! away_team_id: falcons.id, home_team_id: buccaneers.id, away_team_score: 24, home_team_score: 23, point_spread: -1, interval: 12
		NflMatchup.create! away_team_id: raiders.id, home_team_id: bengals.id, away_team_score: 10, home_team_score: 34, point_spread: 9.5, interval: 12
		NflMatchup.create! away_team_id: steelers.id, home_team_id: browns.id, away_team_score: 14, home_team_score: 20, point_spread: -1, interval: 12
		NflMatchup.create! away_team_id: broncos.id, home_team_id: chiefs.id, away_team_score: 17, home_team_score: 9, point_spread: -10, interval: 12
		NflMatchup.create! away_team_id: titans.id, home_team_id: jaguars.id, away_team_score: 19, home_team_score: 24, point_spread: -3.5, interval: 12
		NflMatchup.create! away_team_id: bills.id, home_team_id: colts.id, away_team_score: 13, home_team_score: 20, point_spread: 2, interval: 12
		NflMatchup.create! away_team_id: vikings.id, home_team_id: bears.id, away_team_score: 10, home_team_score: 28, point_spread: 6.5, interval: 12
		NflMatchup.create! away_team_id: seahawks.id, home_team_id: dolphins.id, away_team_score: 21, home_team_score: 24, point_spread: -3, interval: 12
		NflMatchup.create! away_team_id: ravens.id, home_team_id: chargers.id, away_team_score: 16, home_team_score: 13, point_spread: -1, interval: 12
		NflMatchup.create! away_team_id: rams.id, home_team_id: cardinals.id, away_team_score: 31, home_team_score: 17, point_spread: 1, interval: 12
		NflMatchup.create! away_team_id: sf_49ers.id, home_team_id: saints.id, away_team_score: 31, home_team_score: 21, point_spread: -1, interval: 12
		NflMatchup.create! away_team_id: packers.id, home_team_id: giants.id, away_team_score: 10, home_team_score: 38, point_spread: 1, interval: 12
		NflMatchup.create! away_team_id: panthers.id, home_team_id: eagles.id, away_team_score: 30, home_team_score: 22, point_spread: -3, interval: 12

	# INTERVAL 13
		NflMatchup.create! away_team_id: saints.id, home_team_id: falcons.id, away_team_score: 13, home_team_score: 23, point_spread: 3.5, interval: 13
		NflMatchup.create! away_team_id: sf_49ers.id, home_team_id: rams.id, away_team_score: 13, home_team_score: 16, point_spread: -7, interval: 13
		NflMatchup.create! away_team_id: seahawks.id, home_team_id: bears.id, away_team_score: 23, home_team_score: 17, point_spread: 3, interval: 13
		NflMatchup.create! away_team_id: cardinals.id, home_team_id: jets.id, away_team_score: 6, home_team_score: 7, point_spread: 6, interval: 13
		NflMatchup.create! away_team_id: colts.id, home_team_id: lions.id, away_team_score: 35, home_team_score: 33, point_spread: 7, interval: 13
		NflMatchup.create! away_team_id: vikings.id, home_team_id: packers.id, away_team_score: 14, home_team_score: 23, point_spread: 7, interval: 13
		NflMatchup.create! away_team_id: texans.id, home_team_id: titans.id, away_team_score: 24, home_team_score: 10, point_spread: -7, interval: 13
		NflMatchup.create! away_team_id: panthers.id, home_team_id: chiefs.id, away_team_score: 21, home_team_score: 27, point_spread: -5.5, interval: 13
		NflMatchup.create! away_team_id: jaguars.id, home_team_id: bills.id, away_team_score: 18, home_team_score: 34, point_spread: 6, interval: 13
		NflMatchup.create! away_team_id: patriots.id, home_team_id: dolphins.id, away_team_score: 23, home_team_score: 16, point_spread: -7, interval: 13
		NflMatchup.create! away_team_id: buccaneers.id, home_team_id: broncos.id, away_team_score: 23, home_team_score: 31, point_spread: 9.5, interval: 13
		NflMatchup.create! away_team_id: steelers.id, home_team_id: ravens.id, away_team_score: 23, home_team_score: 20, point_spread: 8, interval: 13
		NflMatchup.create! away_team_id: bengals.id, home_team_id: chargers.id, away_team_score: 20, home_team_score: 13, point_spread: -1, interval: 13
		NflMatchup.create! away_team_id: browns.id, home_team_id: raiders.id, away_team_score: 20, home_team_score: 17, point_spread: -1, interval: 13
		NflMatchup.create! away_team_id: eagles.id, home_team_id: cowboys.id, away_team_score: 33, home_team_score: 38, point_spread: 11, interval: 13
		NflMatchup.create! away_team_id: giants.id, home_team_id: redskins.id, away_team_score: 16, home_team_score: 17, point_spread: -2.5, interval: 13

	# INTERVAL 14
		NflMatchup.create! away_team_id: broncos.id, home_team_id: raiders.id, away_team_score: 26, home_team_score: 13, point_spread: -10, interval: 14
		NflMatchup.create! away_team_id: jets.id, home_team_id: jaguars.id, away_team_score: 17, home_team_score: 10, point_spread: -3, interval: 14
		NflMatchup.create! away_team_id: rams.id, home_team_id: bills.id, away_team_score: 15, home_team_score: 12, point_spread: 3.5, interval: 14
		NflMatchup.create! away_team_id: chiefs.id, home_team_id: browns.id, away_team_score: 7, home_team_score: 30, point_spread: 7, interval: 14
		NflMatchup.create! away_team_id: titans.id, home_team_id: colts.id, away_team_score: 23, home_team_score: 27, point_spread: 3.5, interval: 14
		NflMatchup.create! away_team_id: ravens.id, home_team_id: redskins.id, away_team_score: 28, home_team_score: 31, point_spread: 1, interval: 14
		NflMatchup.create! away_team_id: bears.id, home_team_id: vikings.id, away_team_score: 14, home_team_score: 21, point_spread: -1, interval: 14
		NflMatchup.create! away_team_id: chargers.id, home_team_id: steelers.id, away_team_score: 34, home_team_score: 24, point_spread: 7, interval: 14
		NflMatchup.create! away_team_id: eagles.id, home_team_id: buccaneers.id, away_team_score: 23, home_team_score: 21, point_spread: 8, interval: 14
		NflMatchup.create! away_team_id: cowboys.id, home_team_id: bengals.id, away_team_score: 20, home_team_score: 19, point_spread: 3.5, interval: 14
		NflMatchup.create! away_team_id: falcons.id, home_team_id: panthers.id, away_team_score: 20, home_team_score: 30, point_spread: -3, interval: 14
		NflMatchup.create! away_team_id: dolphins.id, home_team_id: sf_49ers.id, away_team_score: 13, home_team_score: 27, point_spread: 10.5, interval: 14
		NflMatchup.create! away_team_id: cardinals.id, home_team_id: seahawks.id, away_team_score: 0, home_team_score: 58, point_spread: 10.5, interval: 14
		NflMatchup.create! away_team_id: saints.id, home_team_id: giants.id, away_team_score: 27, home_team_score: 52, point_spread: 4, interval: 14
		NflMatchup.create! away_team_id: lions.id, home_team_id: packers.id, away_team_score: 20, home_team_score: 27, point_spread: 6, interval: 14
		NflMatchup.create! away_team_id: texans.id, home_team_id: patriots.id, away_team_score: 14, home_team_score: 42, point_spread: 5.5, interval: 14

	# INTERVAL 15
		NflMatchup.create! away_team_id: bengals.id, home_team_id: eagles.id, away_team_score: 34, home_team_score: 13, point_spread: -4.5, interval: 15
		NflMatchup.create! away_team_id: giants.id, home_team_id: falcons.id, away_team_score: 0, home_team_score: 34, point_spread: 1, interval: 15
		NflMatchup.create! away_team_id: buccaneers.id, home_team_id: saints.id, away_team_score: 0, home_team_score: 41, point_spread: 3.5, interval: 15
		NflMatchup.create! away_team_id: redskins.id, home_team_id: browns.id, away_team_score: 38, home_team_score: 21, point_spread: 4, interval: 15
		NflMatchup.create! away_team_id: packers.id, home_team_id: bears.id, away_team_score: 21, home_team_score: 13, point_spread: -3, interval: 15
		NflMatchup.create! away_team_id: vikings.id, home_team_id: rams.id, away_team_score: 36, home_team_score: 22, point_spread: 1, interval: 15
		NflMatchup.create! away_team_id: colts.id, home_team_id: texans.id, away_team_score: 17, home_team_score: 29, point_spread: 10.5, interval: 15
		NflMatchup.create! away_team_id: broncos.id, home_team_id: ravens.id, away_team_score: 34, home_team_score: 17, point_spread: -3, interval: 15
		NflMatchup.create! away_team_id: jaguars.id, home_team_id: dolphins.id, away_team_score: 3, home_team_score: 24, point_spread: 7.5, interval: 15
		NflMatchup.create! away_team_id: seahawks.id, home_team_id: bills.id, away_team_score: 50, home_team_score: 17, point_spread: -4.5, interval: 15
		NflMatchup.create! away_team_id: lions.id, home_team_id: cardinals.id, away_team_score: 10, home_team_score: 38, point_spread: -6, interval: 15
		NflMatchup.create! away_team_id: panthers.id, home_team_id: chargers.id, away_team_score: 31, home_team_score: 7, point_spread: 3, interval: 15
		NflMatchup.create! away_team_id: chiefs.id, home_team_id: raiders.id, away_team_score: 0, home_team_score: 15, point_spread: 4.5, interval: 15
		NflMatchup.create! away_team_id: steelers.id, home_team_id: cowboys.id, away_team_score: 24, home_team_score: 27, point_spread: 1, interval: 15
		NflMatchup.create! away_team_id: sf_49ers.id, home_team_id: patriots.id, away_team_score: 41, home_team_score: 34, point_spread: 4, interval: 15
		NflMatchup.create! away_team_id: jets.id, home_team_id: titans.id, away_team_score: 10, home_team_score: 14, point_spread: 1, interval: 15

	# INTERVAL 16
		NflMatchup.create! away_team_id: falcons.id, home_team_id: lions.id, away_team_score: 31, home_team_score: 18, point_spread: -3.5, interval: 16
		NflMatchup.create! away_team_id: bills.id, home_team_id: dolphins.id, away_team_score: 10, home_team_score: 24, point_spread: 5, interval: 16
		NflMatchup.create! away_team_id: raiders.id, home_team_id: panthers.id, away_team_score: 6, home_team_score: 17, point_spread: 9.5, interval: 16
		NflMatchup.create! away_team_id: redskins.id, home_team_id: eagles.id, away_team_score: 27, home_team_score: 20, point_spread: -3.5, interval: 16
		NflMatchup.create! away_team_id: saints.id, home_team_id: cowboys.id, away_team_score: 34, home_team_score: 31, point_spread: 1, interval: 16
		NflMatchup.create! away_team_id: colts.id, home_team_id: chiefs.id, away_team_score: 20, home_team_score: 13, point_spread: -4.5, interval: 16
		NflMatchup.create! away_team_id: vikings.id, home_team_id: texans.id, away_team_score: 23, home_team_score: 6, point_spread: 7.5, interval: 16
		NflMatchup.create! away_team_id: chargers.id, home_team_id: jets.id, away_team_score: 27, home_team_score: 17, point_spread: 3, interval: 16
		NflMatchup.create! away_team_id: titans.id, home_team_id: packers.id, away_team_score: 7, home_team_score: 55, point_spread: 10.5, interval: 16
		NflMatchup.create! away_team_id: patriots.id, home_team_id: jaguars.id, away_team_score: 23, home_team_score: 16, point_spread: -14, interval: 16
		NflMatchup.create! away_team_id: rams.id, home_team_id: buccaneers.id, away_team_score: 28, home_team_score: 13, point_spread: 3, interval: 16
		NflMatchup.create! away_team_id: bengals.id, home_team_id: steelers.id, away_team_score: 13, home_team_score: 10, point_spread: 3.5, interval: 16
		NflMatchup.create! away_team_id: browns.id, home_team_id: broncos.id, away_team_score: 12, home_team_score: 34, point_spread: 11, interval: 16
		NflMatchup.create! away_team_id: bears.id, home_team_id: cardinals.id, away_team_score: 28, home_team_score: 13, point_spread: -7, interval: 16
		NflMatchup.create! away_team_id: giants.id, home_team_id: ravens.id, away_team_score: 14, home_team_score: 33, point_spread: -1, interval: 16
		NflMatchup.create! away_team_id: sf_49ers.id, home_team_id: seahawks.id, away_team_score: 13, home_team_score: 42, point_spread: 2.5, interval: 16

	# INTERVAL 17
		NflMatchup.create! away_team_id: panthers.id, home_team_id: saints.id, away_team_score: 44, home_team_score: 38, point_spread: 4, interval: 17
		NflMatchup.create! away_team_id: texans.id, home_team_id: colts.id, away_team_score: 16, home_team_score: 28, point_spread: -6.5, interval: 17
		NflMatchup.create! away_team_id: ravens.id, home_team_id: bengals.id, away_team_score: 17, home_team_score: 23, point_spread: 5.5, interval: 17
		NflMatchup.create! away_team_id: jets.id, home_team_id: bills.id, away_team_score: 9, home_team_score: 28, point_spread: 3.5, interval: 17
		NflMatchup.create! away_team_id: buccaneers.id, home_team_id: falcons.id, away_team_score: 22, home_team_score: 17, point_spread: 3, interval: 17
		NflMatchup.create! away_team_id: jaguars.id, home_team_id: titans.id, away_team_score: 20, home_team_score: 38, point_spread: 6, interval: 17
		NflMatchup.create! away_team_id: bears.id, home_team_id: lions.id, away_team_score: 26, home_team_score: 24, point_spread: -3, interval: 17
		NflMatchup.create! away_team_id: eagles.id, home_team_id: giants.id, away_team_score: 7, home_team_score: 42, point_spread: 6.5, interval: 17
		NflMatchup.create! away_team_id: browns.id, home_team_id: steelers.id, away_team_score: 10, home_team_score: 24, point_spread: 10, interval: 17
		NflMatchup.create! away_team_id: raiders.id, home_team_id: chargers.id, away_team_score: 21, home_team_score: 24, point_spread: 9.5, interval: 17
		NflMatchup.create! away_team_id: dolphins.id, home_team_id: patriots.id, away_team_score: 0, home_team_score: 28, point_spread: 11.5, interval: 17
		NflMatchup.create! away_team_id: cardinals.id, home_team_id: sf_49ers.id, away_team_score: 13, home_team_score: 27, point_spread: 16, interval: 17
		NflMatchup.create! away_team_id: chiefs.id, home_team_id: broncos.id, away_team_score: 3, home_team_score: 38, point_spread: 17, interval: 17
		NflMatchup.create! away_team_id: rams.id, home_team_id: seahawks.id, away_team_score: 13, home_team_score: 20, point_spread: 11, interval: 17
		NflMatchup.create! away_team_id: packers.id, home_team_id: vikings.id, away_team_score: 34, home_team_score: 37, point_spread: -3, interval: 17
		NflMatchup.create! away_team_id: cowboys.id, home_team_id: redskins.id, away_team_score: 18, home_team_score: 28, point_spread: 3, interval: 17

	end
end
