# Mint-classics-Project
This is an analysis on mini classic company to solve their inventory problems
## Agenda the case study
This exploratory analysis will cover the following deliverables:

*  Project description
*   Description of data sources
*   data exploration + analysis
* Suggestions for inventory reduction supported by SQL queries
# A - Project description
To analyze data in a relational database using SQL queries with the goal of supporting inventory-related business decisions that lead to the closure of a storage facility.

# Questions
Where are items stored and if they were rearranged, could a warehouse be eliminated?
How are inventory numbers related to sales figures? Do the inventory counts seem appropriate for each item?
Are we storing items that are not moving? Are any items candidates for being dropped from the product line?
If we decrease the stocks by 5% for each of the products does it affect the sales?
Is price a major factor in popularity of the products?
What is profit percentage earned in the products that were sold the most?
What is profit percentage earned in the products that were sold the least?
# Method
We used SQL queries on MySQL Workbench to perform exploratory data analysis. To begin with, we with imported the database using the SQL script linked here- mintclassics DB and studied the schema using the EER (Extended Entity-Relationship diagram). Further, we identified the tables and fields that could provide relavent informations to the questions asked above and support our insights. We begin this project with analyzing historical sales data, identifying trends, and assessing stock levels. By reallocating orders, optimizing inventory, and considering price adjustments, the aim was to enhance operational efficiency, reduce costs, and maximize profitability while ensuring product availability and customer satisfaction. This approach aligns with modern supply chain principles and business management.

# Insights and Suggestions
## General Insights-

In the initial year of 2003, a total of 36,439 sales transactions were recorded. This figure experienced a decline, reaching 19,590 sales in 2005.
Yearly Sales

The preponderance of clients hailed from the United States, and it is noteworthy that this nation yielded the highest revenue, followed by Spain and France.
# Revenue

Interestingly, six countries—Poland, Portugal, Netherlands, South Africa, Russia, and Israel—did not contribute to revenue generation, while Hong Kong and Ireland generated the least revenue.
Least revenue

During this period, six clients canceled their orders, with one prominent client opting for a more favorable offer from a competitor.
customer status cancelled orders product codes

To maintain competitiveness, a 5% price reduction is proposed for select products while ensuring continued profitability.
suggested pricing

# Problem-specific Insights

Significantly, the profit percentage exhibited minimal variance between the leastand most popular products. Price of the product also did not seem to influence the popularity of the product.
least ordered products' profit percentage most ordered products' profit percentage

We also observed that a product named 1985 Toyota Supra (product code- S18_3233) had not been sold at all, On further investigating the product we observed that this product had not been priced yet. So the reason why it didn't sell could be that it's newly launched product or maybe there has been an error with the data entry.

Inventory primarily resides in warehouses A, B, and C, with warehouses A and B serving as primary shipping hubs, followed by warehouses C and D.

details on warehouse warehouse stock stock shipped from each warehouse

To address the significant disparity between available stock and ordered quantities over the past three years, a reduction in stock levels (20%-30%) is suggested for the 68 listed products that may potentially become obsolete with time. However, precise numbers should be discussed with the supplier.
top 10 overstocked products

Approximately 24 products are maintaining optimal stock levels for received orders, while five products require restocking in the near term, and 11 products demand immediate replenishment to meet market demands. As the demand for stocks of each products is different from the other, it won't be feasible to reduce the stocks for each and every product by 5%.
optimum stocks-total 24 restock urgent restock

Taking into account that we have to reduce a lot of extra stock and close down one storage place, we can move the orders from warehouse D to warehouse C. This will help us use our space better and close the storage place smoothly.
  
The relevant tables for this project will be:
* warehouses
* products
* orderdetails (more financial information than orders, more descriptive)
