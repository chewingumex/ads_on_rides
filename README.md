    ___    ____  _____    ____  _   __   ____  ________  ___________
   /   |  / __ \/ ___/   / __ \/ | / /  / __ \/  _/ __ \/ ____/ ___/
  / /| | / / / /\__ \   / / / /  |/ /  / /_/ // // / / / __/  \__ \ 
 / ___ |/ /_/ /___/ /  / /_/ / /|  /  / _, _// // /_/ / /___ ___/ / 
/_/  |_/_____//____/   \____/_/ |_/  /_/ |_/___/_____/_____//____/  
                                                                    
                                                                                               
FUNCTIONALITY:

- ADS ON RIDES is a user friendly visualisation tool that can be used to estimate cycle traffic based on the number of hires of London's Santander Cycle Hire Scheme.
- Its main objective is to aid campaign planners to optimise wheely billboards locations.
- Campaign planners can explore cycling traffic in specific areas at specific date and time ranges to estimate number of billboard views.

ADS ON RIDES TECHNICAL SPECS:

- ADS ON RIDES is powered by the public dataset london_bicycles maintained by Google and accessible on BQ (datasetID: bigquery-public-data:london_bicycles).
- The visualisation tool was built using Data Studio and is accessible through the link. Please get in touch should you want to check out the demo. 
- To extract the data on which ADS ON RIDES runs, simply run main_query.sql (in this repo) on Big Query and save or export the data.

ADS ON RIDES INSTRUCTIONS:

The dashboard is simple to navigate:
1. Select date range
2. Focus on desired hour range
3. Filter desired stations
