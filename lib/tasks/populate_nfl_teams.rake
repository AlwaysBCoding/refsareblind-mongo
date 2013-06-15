namespace :seed_data do
	desc "Populates nfl_teams with all 32 teams from the NFL"
	task :populate_nfl_teams => :environment do

		NflTeam.create! city: "new england", name: "patriots", conference: "afc", division: "east", abbr: "ne"
		NflTeam.create! city: "miami", name: "dolphins", conference: "afc", division: "east", abbr: "mia"
		NflTeam.create! city: "new york", name: "jets", conference: "afc", division: "east", abbr: "nyj"
		NflTeam.create! city: "buffalo", name: "bills", conference: "afc", division: "east", abbr: "buf"

		NflTeam.create! city: "pittsburgh", name: "steelers", conference: "afc", division: "north", abbr: "pit"
		NflTeam.create! city: "baltimore", name: "ravens", conference: "afc", division: "north", abbr: "bal"
		NflTeam.create! city: "cincinnati", name: "bengals", conference: "afc", division: "north", abbr: "cin"
		NflTeam.create! city: "cleveland", name: "browns", conference: "afc", division: "north", abbr: "cle"

		NflTeam.create! city: "indianapolis", name: "colts", conference: "afc", division: "south", abbr: "ind"
		NflTeam.create! city: "tennessee", name: "titans", conference: "afc", division: "south", abbr: "ten"
		NflTeam.create! city: "jacksonville", name: "jaguars", conference: "afc", division: "south", abbr: "jax"
		NflTeam.create! city: "houston", name: "texans", conference: "afc", division: "south", abbr: "hou"

		NflTeam.create! city: "san diego", name: "chargers", conference: "afc", division: "west", abbr: "sd"
		NflTeam.create! city: "denver", name: "broncos", conference: "afc", division: "west", abbr: "den"
		NflTeam.create! city: "oakland", name: "raiders", conference: "afc", division: "west", abbr: "oak"
		NflTeam.create! city: "kansas city", name: "chiefs", conference: "afc", division: "west", abbr: "kc"

		NflTeam.create! city: "washington", name: "redskins", conference: "nfc", division: "east", abbr: "was"
		NflTeam.create! city: "dallas", name: "cowboys", conference: "nfc", division: "east", abbr: "dal"
		NflTeam.create! city: "new york", name: "giants", conference: "nfc", division: "east", abbr: "nyg"
		NflTeam.create! city: "philadelphia", name: "eagles", conference: "nfc", division: "east", abbr: "phi"

		NflTeam.create! city: "minnesota", name: "vikings", conference: "nfc", division: "north", abbr: "min"
		NflTeam.create! city: "green bay", name: "packers", conference: "nfc", division: "north", abbr: "gb"
		NflTeam.create! city: "detroit", name: "lions", conference: "nfc", division: "north", abbr: "det"
		NflTeam.create! city: "chicago", name: "bears", conference: "nfc", division: "north", abbr: "chi"

		NflTeam.create! city: "new orleans", name: "saints", conference: "nfc", division: "south", abbr: "no"
		NflTeam.create! city: "carolina", name: "panthers", conference: "nfc", division: "south", abbr: "car"
		NflTeam.create! city: "tampa bay", name: "buccaneers", conference: "nfc", division: "south", abbr: "tb"
		NflTeam.create! city: "atlanta", name: "falcons", conference: "nfc", division: "south", abbr: "atl"

		NflTeam.create! city: "san francisco", name: "49ers", conference: "nfc", division: "west", abbr: "sf"
		NflTeam.create! city: "seattle", name: "seahawks", conference: "nfc", division: "west", abbr: "sea"
		NflTeam.create! city: "st. louis", name: "rams", conference: "nfc", division: "west", abbr: "stl"
		NflTeam.create! city: "arizona", name: "cardinals", conference: "nfc", division: "west", abbr: "arz"

	end
end
