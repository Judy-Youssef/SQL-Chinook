### SQL-Based Analysis of Product Sales (Chinook)

## Overview

This repository contains an SQL-based exploratory data analysis (EDA) of the Chinook database, a sample dataset simulating a digital music store similar to iTunes. The analysis focuses on key business insights related to sales performance, including top-selling products, artists, genres, media types, playlists, geographical revenue distribution, and time-based trends. The project is documented in a PDF report (`Chinook SQL EDA.pdf`) that includes SQL queries, results, and interpretations.

The analysis was conducted using SQL queries to extract and aggregate data, providing actionable recommendations for optimizing sales in a music retail environment.

## Motivation

The primary goal of this project is to answer critical business questions using SQL on the Chinook dataset:
1. Identify top-selling tracks and albums.
2. Determine the top sales-generating artists.
3. Evaluate performance across different music genres.
4. Analyze the impact of media types and playlists on sales.
5. Break down revenue by geographical locations (regions, countries, cities).
6. Examine time-based trends in monthly and yearly sales.

This EDA helps uncover patterns in customer behavior, product popularity, and market performance to inform strategic decisions.

## Dataset

The Chinook database is a publicly available sample database representing a digital media store. It includes tables for:
- **Albums**: 347 records, 3 columns
- **Artists**: 275 records, 2 columns
- **Customers**: 59 records, 13 columns
- **Employees**: 8 records, 15 columns
- **Genres**: 25 records, 2 columns
- **Invoices**: 412 records, 9 columns
- **Invoice Lines**: 2240 records, 5 columns
- **Media Types**: 5 records, 2 columns
- **Playlists**: 18 records, 2 columns
- **Playlist Tracks**: 8715 records, 2 columns
- **Tracks**: 3503 records, 9 columns

You can download the database from [Chinook Database](https://www.sqlitetutorial.net/sqlite-sample-database/) (SQLite version recommended for easy setup).

Key statistics from the dataset:
- Total tracks: 3503
- Total invoices: 412
- Total revenue: $2328.60
- Unique albums sold: 304
- Total artists: 275

## Analysis Highlights

The PDF report covers the following sections with SQL queries and insights:

- **Total Counts and Revenue**: Overview of tracks, invoices, albums, and overall sales.
- **Top-Selling Products**: Top 10 tracks and albums by units sold and revenue.
- **Sales by Artist and Genre**: Dominance of rock genres and artists like Iron Maiden and U2.
- **Media Types and Playlists**: Impact on sales, with all tracks appearing in playlists and MPEG audio files leading in volume.
- **Geographical Analysis**: Revenue by regions (e.g., Americas leading with $1101.36), countries (USA at 22% of total), and top cities (e.g., Prague).
- **Time Trends**: Yearly and monthly sales from 2009–2013, showing stable performance with peaks in 2010.

Key findings:
- Rock genre accounts for over a third of revenue ($826.65).
- Video content (e.g., TV Shows) generates higher revenue per unit due to premium pricing.
- Sales are concentrated in the Americas and Europe, with potential for expansion in Asia and Oceania.
- Consistent annual sales (80–83 invoices/year), but modest growth opportunities through promotions and curation.


- Analysis inspired by real-world music retail data challenges.

If you find this useful, star the repo or contribute improvements! For questions, open an issue.
