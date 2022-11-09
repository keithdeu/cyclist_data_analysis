# Analyzing Cyclist Data with Excel and SQL

In this repository, you will find cleaned excel files, SQLlite queries, and analysis results of a fictional dataset of a bike-share company in Chicago, called Cyclistic. The goal of the analysis is to provide Cyclistic marketing team data on the differences in how casual members and annual members use Cyclistic bikes differently, so they can design new marketing strategies to convert casual riders into annual members.

I decided to focus my analysis on the differences between casual members and annual members in regards to how often they used the service, as well as how long their average ride durations where. I started my analysis using Excel.

### Clean
I started my analysis by cleaning the data. For my purposes, consisted of checking the data for duplicate rows. Then I verified there where no empty cells in the "start_time" and "end_time", as these may skew my analysis.

 ### Analyze
After ensuring the data I needed was cleaned, I created two new columns. The first new column I created using the "WEEKDAY" function in excel, I derived from the "started_at" column which day of the week each ride took place. The second new column was created by finding the difference between the columns "started_at" and "ended_at". Using the TEXT and SPLIT functions in excel, I formatted the time duration into minutes as an integer data type. 

Note: some of these files I've uploaded to the folder "csv_versions." I couldn't upload them all because they were too big for Github, but it gives you an idea of the schema for the data I was working with.

I completed all the steps above for the 12 datasets I used in my analysis, which where organized by month between April 2020 - March 2021. Once this was completed, I imported all those datasets into 12 tables into a database I titled "cyclist_database." Now I began working with SQL.

I combined all 12 datasets into one table, which I called "combined_data," adding 2 new columns at the beginning of this table indicating the "month" and "year" of each row. Using this combined dataset, I utilized SQL to query summary statistics for "Number of Rides" and "Average Ride Length." I grouped these statistics by:
  1. weekday for the full year
  2. business quarters for the full year
  3. weekday PER business quarter for the full year
  4. month for the full year

These queries are all located in the "queries" file. I exported these results into an Excel file and continued my work there.

### Visualize
In Excel, I took all my query results and created pivot tables, organizing the columns as the different member types (casual and member), and fields by the groups stated in the queries above. Once this was completed I created charts to visualize the results. From these charts I created an Excel dashboard, in which you are able to filter each charts results to better understand and gain insights from the queries. 

These results can be found in the "Dashboard" file.

