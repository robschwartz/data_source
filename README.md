# Main data hub for Lead Generators


To attach db to new heroku project:

 heroku addons:attach postgresql-clean-54625 -a APP_NAME
 heroku pg:promote HEROKU_POSTGRESQL_COPPER_URL -a APP_NAME


Import Assited Living Facilities
rake import:assisted_living lib/assets/assisted_living_s_y.txt

Import Nursing Home Facilities
rake import:assisted_living lib/assets/ProviderInfo_Downloaded.csv