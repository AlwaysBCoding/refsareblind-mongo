# Configuration

### Ruby Version
	Uses Ruby Version 2.0.0-p195

### Rails Version
	Uses Rails Version 4.0.0.rc2

### Database
	Uses MongoDB

### Server
	Uses Unicorn

### Payment Processing
	Uses Stripe

### File Uploads
	Uses Carrierwave

### Background Processing
	Undecided (?)

### Testing
	Uses RSpec

# Environment Variables
	STRIPE_PUBLISHABLE_KEY
	STRIPE_SECRET_KEY
	CURRENT_NFL_WEEK - The current week of the NFL season

# Process Flow
	- CURRENT_NFL_WEEK is changed in the database to a new week
	- This triggers new picks being available for selection
	- Entries make their picks for the week
	- At a specified DateTime the picks are locked
	- When an NFL game is finished, the matchup is set to finished
		- This effectively scores the results
