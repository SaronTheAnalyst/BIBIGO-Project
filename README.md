# 📊 Product Rating Dashboard for Bibigo (India)

## 📌 Overview
This project visualizes product ratings and sentiment analysis for the **Bibigo** brand in India using Tableau. The dataset was sourced from Kaggle: [Bibigo Brand Reviews and Ratings Dataset](https://www.kaggle.com/datasets/shivanichelkala/bibigo-brand-reviews-and-ratings-dataset).
![Dashboard Screenshot](https://github.com/SaronTheAnalyst/Bibigo-/blob/main/Bibigo%20Dashboard.png)
### 🔍 Key Features
- **Data Cleaning & Sentiment Analysis**: Performed using **SQL** before visualization.
- **Tableau Dashboard**: Includes various visualizations to analyze rating trends and sentiment over time.
- **Interactive Filters**: Allows users to filter by product type, rating, and price category.

## 📂 Dataset Information
- **Source**: [Kaggle Dataset](https://www.kaggle.com/datasets/shivanichelkala/bibigo-brand-reviews-and-ratings-dataset)
- **Data Processing**: SQL was used to clean the dataset, extract relevant columns, and calculate sentiment scores.
- **Fields Used**:
  - `product_type`: Category of the Bibigo product.
  - `ratings`: User ratings (1 to 5 scale).
  - `price_krw`: Product price in KRW.
  - `review_text`: Textual reviews used for sentiment analysis.
  - `sentiment_score`: Computed sentiment score (using NLP techniques in SQL).
  
## 📊 Dashboard Visualizations
### 1️⃣ **Total Rating by Product Type**
   - Displays the number of ratings for each product category.

### 2️⃣ **Average Rating by Region and Product Type**
   - Shows how ratings vary across different regions in India.

### 3️⃣ **Sentiment Score Over Time**
   - Tracks the average sentiment score from user reviews over different months.

### 4️⃣ **Price vs. Rating Table**
   - Compares the average product price with the average rating to analyze pricing effects.

## 📈 Insights & Analysis
1. **Product Popularity**
   - `Mandu (Dumplings)` and `Ready Meals` received the most ratings, indicating their popularity.
   - `Sauce` has relatively fewer ratings, suggesting lower engagement.

2. **Regional Rating Differences**
   - Some regions, like `South India`, give consistently high ratings across all product types.
   - Other regions have mixed reviews, possibly due to cultural taste preferences.

3. **Sentiment Trend Over Time**
   - Sentiment scores fluctuate but remain positive overall.
   - Peaks in May and July might indicate seasonal promotions or new product launches.

4. **Price vs. Rating Relationship**
   - `Kimchi`, `Mandu`, and `Sauce` have the highest average ratings (4.1), despite varying prices.
   - `Rice Cakes` have the lowest average rating (3.9), indicating possible quality concerns.
   - Pricing does not directly correlate with ratings, meaning users may value taste over cost.

## 🚀 How to Recreate the Dashboard
### **1️⃣ Data Preparation (SQL)**
- Load the dataset into a SQL database.
- Perform data cleaning and create sentiment scores using **NLP techniques**.

### **2️⃣ Build the Dashboard (Tableau)**
- Import the cleaned data.
- Use **Bar Charts, Heatmaps, Line Charts, and Tables** for visualization.
- Add **filters** for better interactivity.
---
**Author:** [Gutema Saron Samuel]
