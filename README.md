# SQL_Project-1-for-RetailSales
This is my first SQL project analyzes retail sales data to solve real business questions around revenue, customers, categories, time trends, and performance. I used advanced SQL concepts including CTEs, aggregations, filtering, and ranking to extract insights such as top customers, best months, and shift-wise order behavior.

**Overview
**
This project is a hands-on SQL data analysis exercise built to answer real-world business questions using a retail sales dataset. Instead of focusing only on syntax, the goal was to think like a data analyst—understanding what the business might want to know and how SQL can be used to turn raw transactional data into meaningful insights.

The analysis covers sales performance, customer behavior, category-level trends, time-based patterns, and operational insights such as order distribution across daily shifts.

**Dataset & Context
**
The dataset represents transactional sales data with fields such as transaction date, category, quantity sold, customer demographics, total sales value, and timestamps. While the dataset itself is structured and clean, the real challenge lies in extracting insights that would actually help a business make decisions.

This project assumes a retail or e-commerce context, where stakeholders care about:

Which categories generate the most revenue

Who the top customers are

When sales peak (monthly, yearly, or by time of day)

How customer demographics interact with purchasing behavior

**Key Questions Answered
**
The project addresses 10 business-focused questions, including:

Retrieving sales from specific dates for auditing or investigation

Filtering high-volume category sales within a defined time period

Calculating total and average sales across categories and months

Understanding customer demographics, such as average age by product category

Identifying high-value transactions and top customers

Measuring customer diversity through unique customer counts per category

Analyzing operational patterns by splitting orders into morning, afternoon, and evening shifts

Each question was treated as a real business problem rather than a textbook exercise.

**SQL Concepts Used
**
This project makes deliberate use of both foundational and advanced SQL concepts, including:

WHERE, GROUP BY, HAVING, and ORDER BY for filtering and aggregation

Date and time functions for monthly, yearly, and shift-based analysis

Aggregate functions such as SUM, AVG, and COUNT

Ranking and limiting results to identify top customers

Common Table Expressions (CTEs) to break complex logic into readable, reusable steps

CTEs were especially important in queries that required multiple stages of computation, such as calculating monthly averages first and then identifying the best-performing month within each year. Using CTEs made the queries easier to understand, debug, and maintain.

**Analytical Approach
**
Rather than writing all queries in a single block, I focused on clarity and intent. For example:

Complex calculations were separated into logical steps using CTEs

Column names and query structure were kept readable and self-explanatory

Queries were written with scalability in mind, assuming the dataset could grow larger over time

This approach mirrors how SQL is used in real production or analytics environments, where readability and maintainability matter as much as correctness.

**Insights & Learnings
**
Through this project, a few key insights emerged:

Sales performance varies significantly across categories and time periods

A small group of customers often contributes a disproportionately large share of revenue

Monthly and yearly trends reveal clear seasonality patterns

Breaking the day into shifts provides useful operational insight, especially for staffing or logistics decisions

From a learning perspective, this project reinforced the importance of:

Thinking in terms of business questions, not just queries

Using CTEs to simplify complex logic

Writing SQL that someone else can easily read and understand

This project demonstrates practical SQL skills that go beyond basic SELECT statements. It shows the ability to:

Translate business questions into analytical queries

Use SQL as a decision-support tool

Apply advanced concepts like CTEs in a meaningful way

It reflects how SQL is actually used in data analytics roles—clean, structured, and insight-driven.
