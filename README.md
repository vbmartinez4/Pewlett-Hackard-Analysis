Pewlett Hackard Analysis

## Overview
Pewlett Hackard is on the verge of experiencing a “silver tsunami”, in which a large set of its employees are nearing retirement age. These current employees are categorized as individuals being born between January 1, 1952 and December 31, 1955. The firm has asked for an in-depth analysis to determine the individuals, departments, and roles that as a whole will be affected by the large influx of retirees. 
In order to address this growing issue, we have been asked to utilize SQL to create a number of datasets to populate and reflect which employees under departments or specific titles will be approaching retirement age soon. Utilizing this information, the firm also has a desire to establish a mentorship program to help build up existing employees to the senior roles that will be vacated soon. With the baby boomer generation reaching retirement age within the next few years, it is critical to determine and project a future outlook for the well-being of Pewlett Hackard. 

## Results
Before diving into the creation of table and their analysis, the following Entity Relationship Diagram (ERD) was created to understand the visual relationship of multiple tables we were given prior to diving into the exploratory and organization portion of the analysis.
Viewing the below image, we have mapped out a detailed flowchart the varying relationships held by each table and shared column. Based on the original csv files initially provided, we are able to capture primary and foreign keys of the flowcharts and the data types per each column. Through the assistance of the ERD, two analysis deliverables were established that will help managers prepare for the upcoming “silver tsunami”. 

![ERD](Resources/Employee_DB.png)

### Amount of Retirees
By viewing the below table, there are a large amount of retirees that as of right now reach eligibility for retirement and could retire at any given moment. 

![retiring titles](Resources/count_of_retiring_titles.png)

In total there are 72,458 employees who are now deemed in the stage to retire, which could create a large vacancy within the firm. 
![total retirees](Resources/number_of_total_retiring.png)
