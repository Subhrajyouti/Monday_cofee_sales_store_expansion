# 📊 Business Expansion Analysis

## 📌 Overview
This project analyzes multiple cities based on key business metrics to determine the top locations for expansion. The dataset includes total sales, estimated coffee consumers, average sales per customer, and rent per customer. A weighted scoring system was used to rank the cities and identify the best expansion opportunities.

## 🗂️ Dataset
The dataset includes the following columns:
- **City Name** – The city where the business operates
- **Total Sales** – Revenue generated in that city
- **Estimated Coffee Consumers** – Potential customers in the city
- **Average Sale per Customer** – The average revenue generated per customer
- **Average Rent per Customer** – The cost associated with serving each customer

## 🏆 Ranking Methodology
To rank the cities, a weighted scoring system was applied:
- **Total Sales** (50%) – Higher revenue is prioritized
- **Estimated Consumers** (30%) – A larger customer base is advantageous
- **Average Sale per Customer** (40%) – Higher spending per customer is beneficial
- **Average Rent per Customer** (-20%) – Higher rent negatively impacts the score

## 📈 Results: Top 3 Cities for Expansion
After normalizing the data and applying the weighted formula, the top 3 cities for expansion are:
1. **Pune** – Strong revenue, high spending per customer, and reasonable rent
2. **Chennai** – Large customer base with solid sales numbers
3. **Delhi** – Significant market potential despite moderate average sales per customer

## 📊 Visualization
A bar chart was generated to represent the final rankings. The visualization highlights how each city performed based on the weighted scoring system.

![alt text](image.png)

