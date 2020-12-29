# Green Beta

GreenBeta is a web application built with Ruby on Rails, bootstrap, D3.js and is hosted on heroku. This app started as an idea and a large (very large) csv file with over a million rows. I created mockups, tweaked them after a few review iterations and started developing the application. The first challenge was ensuring the database followed normalization rules. 

You can use this app to search over 37,000 carbon betas (demo app only contains Canadian companies), and compare them to other firms internationally, nationally and in their sector. Firms can use carbon beta to understand their own carbon risk, regulators to gauge the impact of policy changes, and investors to directly manage carbon risk in their portfolios without hurting performance or preferences.

## Demo
https://cryptic-journey-87162.herokuapp.com/

## What is a carbon beta?
It's a number between -4 and 4 that indicates a firm's carbon risk, and more importantly, how that risk will impact it's stock price in the future. Firms are considered "brown" when their carbon beta is less than one, and their stock prices are predicted to be negatively affected if current trends continue. 

## Features
- Autocomplete search a company by name, ISIN (International Securities Identification Number), or CUSIP (Committee on Uniform Securities Identification Procedures).
- User authentication (devise) with associated views, capabilities and emails.
- Visualizations with Chart.js and D3.js.
- Compare a firm's green beta with other firms internationally, nationally and in their sector.
- Partial view for logged in users and guests.
- Random daily green beta for guests.
- Twitter integration that tweets a random green beta every day.
- Contact form.
- Database model that follows normalization rules.
- Seed database with a single command.


