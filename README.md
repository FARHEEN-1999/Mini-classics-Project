# Mini-classics-Projrct
This is an analysis on mini classic company to solve their inventory problems
## Agenda the case study
This exploratory analysis will cover the following deliverables:

*  Project description
*   Description of data sources
*   data exploration + analysis
* Suggestions for inventory reduction supported by SQL queries
# A - Project description
## A.a - The company & Stake holder, Situation & business problem
Mint Classics Company, a retailer of classic model cars and other vehicles, is looking at closing one of their storage facilities.

To support a data-based business decision, they are looking for suggestions and recommendations for reorganizing or reducing inventory, while still maintaining timely service to their customers. For example, they would like to be able to ship a product to a customer within 24 hours of the order being placed.

As a data analyst, you have been asked to use MySQL Workbench to familiarize yourself with the general business by examining the current data. You will be provided with a data model and sample data tables to review. You will then need to isolate and identify those parts of the data that could be useful in deciding how to reduce inventory.

The overall objective is to give recommendations for reducing inventory with the goal of closing one of the storage facilities.

## A.b - The business Task:
* Explore products currently in inventory.
* Determine important factors that may influence inventory reorganization/reduction.
* Provide analytic insights and data-driven recommendations.

## A.c - Guiding questions:
* Where are items stored and if they were rearranged, could a warehouse be eliminated?
* How are inventory numbers related to sales figures? Do the inventory counts seem appropriate for each item?
* Are we storing items that are not moving? Are any items candidates for being dropped from the product line?

## A.d - Key solution metrics
In order to be able to answer above business question(s), the following key metrics are to be calculated.
* Most and least popular types of models
* Summary of inventory at each warehouse location
* Correlation between sales and amount of inventory in stock

# B - Description of data sources
In this analysis, I am using the provided "mintclassicsDB" from the Coursera project "Analyze Data in a Model Car Database with MySQL Workbench".
This is a fictional database for learning purposes.

Previewing the included tables:
* warehouses - lists the 4 warehouses
* products - contains information about different model products
* productlines - descriptions of different product lines
* orderdetails - order id's, products, quantity, and price
* orders - also contains order id's, relevant dates, status, and customer id's
* customers - customer id's with contact information
* payments - customer id, check id, payment date, amount
* employees - list of employee information
* offices - list of 7 offices
  
The relevant tables for this project will be:
* warehouses
* products
* orderdetails (more financial information than orders, more descriptive)
