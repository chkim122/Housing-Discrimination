# Housing Discrimination
This project aims to increase our understanding of the extent to which racial discrimination in the housing market affects pollution exposures across the United States. Using a randomized experiment, we will establish the causal effect of discriminatory behavior on housing search and ultimately on pollution.

It is well established that minority groups in the United States face disproportionately high rates of exposure to a number of criterion and toxic pollutants. However, it has been difficult for researchers to disentangle the role of direct discrimination in the housing market that might result in exposures from other social and income inequities that also determine housing choices.  Consequently, environmental and energy policy is often not able to target the specific mechanisms at play.  Our experimental design will allow us to determine:

The effect of discriminatory behavior on the housing search process
The effect of discriminatory behavior on the pollution exposures given constraints placed on housing search

## Workflow Diagram:
![Imgur](https://i.imgur.com/IM0JEaO.jpg)

## File Hierarchy:
```
Housing-Discrimination
+--README.md
+--workflow_trulia_project.png
+--.gitignore
+--scripts
|  +--listings_crawler
|  |  +--rhgeo_vm.py
|  +--listings_inquirer
|  |  +--trulia_rental_message_sender.py
|  |  +--trulia_rental_message_sender_data.txt
|  +--post_processing
|  |  +--adding_census_blocks_CA.R
|  |  +--mergeData.py
|  |  +--step_1_get_survey.R
|  +--pre_processing
|  |  +--trulia_rental_address_allocator.py
|  |  +--trulia_rental_address_allocator_data.txt
|  |  +--zip_url_finder.py
|  +--survey_gen
|  |  +--survey.py
|  |  +--test_template.xls
+--stores
|  +--atlanta_ga
|  |  +--atlanta_ga_final.csv
|  +--houston_tx
|  |  +--houston_tx_final.csv
|  +--los_angeles_ca
|  |  +--los_angeles_ca_final.csv
```

## Variable Definition: 
```
State                                             State where the address resides in
Zip_Code                                          Zip code where the address resides in
Rent_Per_Month                                    Cost of rent per month of the property
Year                                              The year when the property was built
Days_on_Trulia                                    Number of days where the property was up on Trulia
Type                                              Property type
Sqft                                              Land area in square feet
Phone_Number                                      Contact phone number for the property
Bedroom_min                                       Minimum number of bedrooms the property offers
Bedroom_max                                       Maximum number of bedrooms the property offers
Bathroom_min                                      Minimum number of bathrooms the property offers
Bathroom_max                                      Maximum number of bathrooms the property offers
Assault                                           Number of assualts reported in the area
Arrest                                            Number of arrests reported in the area
Theft                                             Number of thefts reported in the area
Vandalism                                         Number of vandalism crimes reported in the area
Burglary                                          Number of bulgularies reported in the area
Crime_Other                                       Number of other types of crimes reported in the area
Elementary_School_Count                           Number of elementary schools nearby
Elementary_School_Avg_Score                       Average rating of elementary schools
Middle_School_Count                               Number of middle schools nearby
Middle_School_Avg_Score                           Average rating of middle schools
High_School_Count                                 Number of high schools nearby
High_School_Avg_Score                             Average rating of high schools
Driving                                           Percentage of people that commute by car
Transit                                           Percentage of people that commute by transit
Walking                                           Percentage of people that commute on foot
Cycling                                           Percentage of people that communte by cycling
Restaurant                                        Number of restaurants nearby
Groceries                                         Number of groceries nearby
Nightlife                                         Number of nightlife locations nearby
Cafe                                              Number of cafes nearby
Shopping                                          Number of shopping locations nearby
Entertainment                                     Number of entertainment locations nearby
Beauty                                            Number of beauty locations nearby
Active_life                                       Number of active life locations nearby
Latitude                                          Latitude of the property
Longitude                                         Longitude of the property
EPA_Region                                        EPA region that the property belongs in 
Population                                        Number of people living nearby
Particulate_Matter                                "Annual average of matter in the air composed of
particles smaller than 2.5 microns in the area"
Ozone                                             Ozone level in air
NATA._Diesel_PM                                   Diesel particulate matter level in air
NATA._Air_Toxics_Cancer_Risk                      Lifetime inhalation cancer risk
NATA._Respiratory_Hazard_Index                    Ratio of exposure concentration to RfC
Traffic_Proximity_and_Volume                      Count of vehicles (average annual daily traffic) at major roads within 500 meters (or nearest neighbor outside 500 meters), divided by distance in kilometers (km)
Lead_Paint_Indicator                              Percentage of housing units built before 1960, as an indicator of potential exposure to lead
Superfund_Proximity                               Count of proposed and listed "Superfund" sites within 5 km (or nearest neighbor outside 5 km), divided by distance
RMP_Proximity                                     Count of facilities within 5 km (or nearest neighbor outside 5 km), divided by distance
Hazardous_Waste_Proximity                         Count of hazardous waste sites within 5 km (or nearest neighbor outside 5 km), divided by distance
Wastewater_Discharge_Indicator                    Toxicity weighted stream concentrations divided by distance in kilometers (km)
Demographic_Index.                                Average between the percentage of minorites in the area and the percentage of low income people in the area
Minority_Population.                              Percentage of the population that are minorities
Low_Income_Population.                            Percentage of the population that has low income
Linguistically_Isolated_Population.               Percentage of the population that is linguistically isolated
Population_with_Less_Than_High_School_Education.  Percentage of the population with an education less than of a high school education
Population_under_Age_5.                           Population that is under the age of 5
Population_over_Age_64.                           Population that is over the age of 64
URL                                               URL of the property
Short_form_ID                                     ID of the short form that was associated with the property
STATEFP10                                         2010 Census state FIPS code
COUNTYFP10                                        2010 Census county FIPS code
TRACTCE10                                         2010 Census census tract code
BLOCKCE10                                         2010 Census tabulation block number
GEOID10                                           Census block identifier; a concatenation of 2010 Census state FIPS code, 2010 Census county FIPS code, 2010 Census tract code, and 2010 Census block number
NAME10                                            2010 Census tabulation block name; a concatenation of ‘Block’ and the current tabulation block number
MTFCC10                                           MAF/TIGER feature class code
UR10                                              2010 Census urban/rural indicator
UACE10                                            2010 Census urban area code
UATYPE                                            2010 Census urban area type
FUNCSTAT10                                        2010 Census functional status
ALAND10                                           2010 Census land area
AWATER10                                          2010 Census water area
INTPTLAT10                                        2010 Census latitude of the internal point
INTPTLON10                                        2010 Census longitude of the internal point
person_id                                         Identification number of the person
person_name                                       Alias that the person has
gender                                            The person's gender
racial_category                                   The person's race
education_level                                   The person's education level
availability_selection/available                  Availabilty of the property for rental
response_medium                                   Platform in which the response was sent over
person_or_computer                                The party responsible for the response
encouraging_scale_selection/encouraging_scale     Encouragement level of the response
timestamp_inquiry_sent_out                        Timestamp of the inquiry being sent out
timestamp_response_received                       Timestamp of the response being sent out
timeDiff                                          Time difference (in seconds) between the response timestamp and the inquiry timestamp
response                                          Binary value indicating whether a response existed for that address
total_responses                                   Total number of responses for a given address
inquiry_order                                     Order in which an inquiry for the address was sent out
response_order                                    Order in which a response for the address was sent out
inquiry_weekday                                   Day of the week where the inquiry was sent out
response_weekday                                  Day of the week where the response was sent out
inquiry_time_of_day                               Time range where the inquiry was sent out
response_time_of_day                              Time range where the response was sent out
Income                                            Binary value indicating whether income was mentioned in the response
References                                        Binary value indicating whether references was mentioned in the response
Credit                                            Binary value indicating whether credit was mentioned in the response
Employment/Job                                    Binary value indicating whether employment/job was mentioned in the response
Co-renters/Roommates                              Binary value indicating whether co-renters/roommates was mentioned in the response
Family                                            Binary value indicating whether family was mentioned in the response
Smoking                                           Binary value indicating whether smoking was mentioned in the response
Pets                                              Binary value indicating whether pets was mentioned in the response
criminal_history                                  Binary value indicating whether pets was mentioned in the response
eviction_history                                  Binary value indicating whether criminial history was mentioned in the response
rental_history                                    Binary value indicating whether rental history was metnioed in the response
government_housing_vouchers                       Binary value indicating whether government housing vouchers was mentioned in the response
```
