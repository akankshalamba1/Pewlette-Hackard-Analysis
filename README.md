# Pewlette-Hackard-Analysis

## Overview of analysis
This project we are working with Pewlett Hackard is a large company boasting several thousand employees, and it's been around for a long time. As baby boomers begin to retire at a rapid rate, Pewlett Hackard is looking toward the future in two ways. First, it's offering a retirement package for those who meet certain criteria. Second, it's starting to think about which positions will need to be filled in the near future.The number of upcoming retirements will leave thousands of job openings. So we will be helping Bobby's manager for this analysis. 

[Employee_database_Challenge](/queries.sql/Employee_Database_Challenge.sql)

**Software used:** QuickDBD, PostgressSQL, PgAdmin 

## Result of Analysis

- QuickDBD:  
This analysis included dealing with alot of data we used QuickDBD as a tool for declutering of data and building relationship between different databases. We used this tool to make a relationship diagram between tables. The ER Diagram is as follows:

![Employee_database_structure](https://user-images.githubusercontent.com/111251560/195484244-07f02bf6-a405-4cbe-a1d0-d29f3ea7658e.png)

- PostgressSQL and PgAdmin: 
PostgressSQL and PgAdmin are used together to do the analysis. For this analysis we followed following steps:

- **Creating different csv files from the data**

![Employee_data1](https://user-images.githubusercontent.com/111251560/195488891-2440d321-cf4a-4a6d-bb77-dd3a5bf36331.png)

![emp_data2](https://user-images.githubusercontent.com/111251560/195488926-c9c91666-c5db-484a-a0e3-ebdc022439de.png)

[Employee_data](/queries.sql/Employees_Database.sql)

- **Creating Retirement_title table**

![retirement_titles](https://user-images.githubusercontent.com/111251560/195489468-977dc0f2-f314-4bef-8758-c8491b50f983.png)

- **Filtering latest job title**

![distinct_on](https://user-images.githubusercontent.com/111251560/195489506-f93cfc48-64c9-41fe-b181-4c9e08a2b117.png)

- **Calculating the total retiring count**

![retiring_titles](https://user-images.githubusercontent.com/111251560/195489568-f21ca8b5-5a03-436f-a808-f5ccf1ea1da8.png)

- **Finding membership eligibility**

![membership](https://user-images.githubusercontent.com/111251560/195489587-5976a0a0-1646-4bbe-9487-ede553253852.png)

## Summary
We could have 13,505 employees retiring soon as the silver tsunami approaches. This number is the number of people currently working for the company who worked for the company from 1985 to 1988 and those whose date of birth was between 1962 and 1965. The companies plan is to have these employees to mentor new hires that will be filling in for the retiring associates.

[additional_analysis](/queries.sql/additional_analysis.sql)

- **Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**

![mentor](https://user-images.githubusercontent.com/111251560/195493058-adf16396-b839-46de-9df5-a5109c77675e.png)


- **How many roles will need to be filled as the "silver tsunami" begins to make an impact?**
To calculate the total number of the roles that need to be filled we calculate it by calculating the total number of the employees that will be leaving from various departments.

![role_to_fill](https://user-images.githubusercontent.com/111251560/195493113-462ac7a6-da92-4b3c-a2be-6d0b5e1924bf.png)

Role to be filled per departments:

![data](https://user-images.githubusercontent.com/111251560/195493213-26ccd695-8f88-44e5-89d0-3535804bef9d.png)
