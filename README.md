# Application Information

	** App Versions **
		Ruby Version  - 2.0.0-p195
		Rails Version - 4.0.0.rc2

	** Database **
		Primary Data Store - MongoDB
		ORM                - Mongoid

	** Server **
		Uses Unicorn

	** Payment Processing **
		Uses Stripe

	** File Uploads **
		File Upload Gem   - Carrierwave
		File Upload Store - Amazon S3
		Notes             - Cloud uploads through Fog, Image processing through ImageMagick

	** Background Processing **
		Undecided (?)

	** Testing **
		Unit Tests        - RSpec
		Factories         - Factory Girl
		Integration Tests - Capybara

	** Environment Variables **
		STRIPE_PUBLISHABLE_KEY
		STRIPE_SECRET_KEY
		CURRENT_NFL_WEEK - The current week of the NFL season

	** Process Flow **
		- CURRENT_NFL_WEEK is changed in the database to a new week
		- This triggers new picks being available for selection
		- Entries make their picks for the week
		- At a specified DateTime the picks are locked
		- When an NFL game is finished, the matchup is set to finished
			- This effectively scores the results
