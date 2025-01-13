# Bank-Loan-Report-Analysis
The table offers detailed information for each loan, such as loan ID, customer name, gender, state, funded amount, received amount, grade, subgrade, and purpose. This data allows for an in-depth analysis of the bank's lending portfolio.

## Objective of this Project:  
The goal was to give insights into important loan-related variables and their changes over time, allowing for data-driven decision-making, monitoring loan portfolio health, and detecting patterns for lending strategy.

## Tools used:
Microsoft Excel, Mysql Workbench, Microsoft Power BI  

## KPIs created:   
- Total Loan Applications: Calculate the total number of loan applications received during a certain time period. Changes should be monitored both month-to-date (MTD) and month-over-month (MoM).  
- Total Funded Amount: Determine the total amount of monies granted as loans. Display MTD and MoM changes.  
- Total Amount Received: Monitor the total amount received from borrowers to determine the bank's cash flow from repayments. Examine MTD and MoM changes.   
- Average interest rate: Average interest rate for all loans. Monitor MTD and MoM variances to acquire an understanding of the total cost of the lending portfolio.   
- Average Debt-to-Income Ratio (DTI): Determine the average DTI of borrowers to assess their financial health. Calculate the average DTI for all loans and compare MTD and MoM changes.

## Good Loan vs. Bad Loan KPIs Requirement  
-- Good Loan - Categories that showing status as Fully paid or Current  
- Good Loan Application Percentage: Calculate the percentage of loan applications classified as good loans.   
- Good Loan Applications: Identify the total number of good loan applications.  
- Good Loan Funded Amount: Calculate the total funded amount in the good loan category.  
- Good Loan Total Received Amount: Identify the total received amount in the good loan category.  

-- Bad Loan - Categories that showing status as charged-off.  
- Bad Loan Application Percentage: Calculate the total bad loan percentage. 
- Bad Loan Applications: Identify the total number of bad loan applications.  
- Bad Loan Funded Amount: Identify the total bad loan funded amount.  
- Bad Loan Received Amount: Identify the total received amount via the bad loan category.

### Summary Dashboard
<img width="758" alt="summary" src="https://github.com/user-attachments/assets/0b23121c-371d-4207-8c5d-f598e2fbbc1b" />

## Dashboard Overview Section Requirements:  
-- The dashboard will display critical loan-related data and trends on Total Loan Aplications, Total Funded Amount, Total Received Amount using a variety of chart formats, providing a clear and analytical picture of lending operations.  
- Monthly Trends by Issue Date : To recognize seasonality and ongoing trends in lending practices.   
- State-wise Regional Analysis : To pinpoint areas with notable lending activity and evaluate regional differences.   
- Loan Term Analysis - To enable the client to grasp the allocation of loans over different term durations.   
- Employee Duration Analysis : Examining the distribution of lending metrics among borrowers with varying lengths of employment, which aids in evaluating the effect of employment background on loan requests.   
- Loan purpose Analysis : Offer a visual representation of loan metrics according to the specified loan purposes, facilitating the comprehension of the main reasons that borrowers pursue funding.
- Home Ownership Analysis : For a structured perspective on how home ownership influences loan requests and disbursements.

### Overview Dashboard
<img width="758" alt="overview" src="https://github.com/user-attachments/assets/cdfd0a46-07c0-4c23-b1f8-1d659fe6818c" />

## Dashboard Details Section Requirements:    
To access vital loan data using loan portfolio, borrower profiles, and loan performance.  

### Details Dashboard
<img width="758" alt="details" src="https://github.com/user-attachments/assets/415c21c2-906a-4d8f-92a1-f3da81fcb7f2" />

## KPI Findings:  
- Total Loan Applications:
  - 38.6k total applications
  - MTD: 4.3k applications
  - MoM Growth: +6.9%
- Total Funded Amount:
  - $435.8 million total funding
  - MTD: $54 million
  - MoM Changes: +13%
- Total Received Amount:
  - $473.1 million Total received
  - MTD: $58.1 million
  - MoM Changes: +15.8%
- Average Interest Rate:
  - Overall: 12.5%
  - MTD: 12.8%
  - MoM Changes: +3.4%
- Average Debt-to-Income Ratio (DTI):
  - DTI: 13.8%
  - MTD: $14.2 million
  - MoM Changes: +2.7%

## Good Loan vs Bad Loan Analysis Findings:
  - Good Loan Percentage: 86.2%
  - Good Loan Applications: 33.2k
  - Good Loan Total Funded Amount: $370.2 million
  - Good Loan Received Amount: $435.8 million
  
  - Bad Loan Percentage: 13.8%
  - Bad Loan Applications: 5.3k
  - Bad Loan Funded Amount: $65.5 million
  - Bad Loan Received Amount: $37.3 million

## Insights and Analysis
  - Total Funded Amount by Month: The highest funded amount was in December, with approximately $54 million.
  - Funded Amount by State: California had the highest funded and received amounts.
  - Funded Amount by Term: Short-term loans (36 months) accounted for 73.2%, while long-term loans (60 months) held the remaining 26.8%.
  - Funded Amount by Employee Length: Employees with 10+ years of experience received the highest funded amounts.
  - Funded Amount by Purpose: Debt consolidation was the primary purpose for loans.
  - Funded Amount by Home Ownership : Loan request for rent is the highest.
