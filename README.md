### YouTube Content Performance Engagement Analysis


# Project Overview

This project analyzes YouTube channel performance and content strategies using data collected from multiple educational YouTube channels. The goal is to understand how video length, upload timing, and engagement metrics influence video performance, and to derive actionable insights for content optimization.

The project follows an end-to-end analytics workflow:
data extraction → cleaning → SQL-based analysis → Power BI visualization.

# Objectives

Compare performance across multiple YouTube channels

Analyze the impact of video length on views and engagement

Identify optimal upload days and months

Study relationships between views, engagement, duration, and subscribers

Build an interactive dashboard for business-style insights

# Tools and Softwares

Python – Data extraction & preprocessing

YouTube Data API – Data source

Pandas & NumPy – Data cleaning and feature engineering

SQL Server – Data storage, transformation, and analytical queries

Power BI – Data modeling and interactive dashboards

# Data Description

The dataset includes video-level and channel-level information such as:

Video title & ID

Channel name & subscribers

Publish date (day, month, year)

Video duration (seconds & buckets)

Views, likes, comments

Engagement rate

Views per day

Video age

Data was collected for 5 YouTube channels and stored in a structured SQL database.

# Data Modeling

Raw data loaded into staging tables

Cleaned and transformed into analysis-ready tables

SQL views created for:

Channel performance

Content classification (by video length)

Upload timing analysis (day & month)

Views were directly connected to Power BI for reporting

# Key Analyses & Visualizations
Channel Performance

Subscribers vs Average Views (scatter)

Total videos vs engagement rate

Channel contribution to total views

Average views per video by channel

Content Strategy

Average & median views by video length

Engagement rate by video length

Views per day by content type

Duration vs views (scatter with outliers)

Upload Timing

Best upload day based on average views

Monthly seasonality trends

Upload day vs engagement comparison

# Key Insights

Higher subscriber count does not guarantee higher average views

Long-form videos tend to have higher average views, but also show higher variance

Short and medium videos often achieve stronger engagement rates

Upload timing significantly impacts performance, with certain days consistently outperforming others

A small number of high-performing videos heavily influence average metrics (outlier effect)

# Dashboard Structure

The Power BI report is divided into two main pages:

# Channel Performance Dashboard

Focuses on comparing channels based on:

Subscribers

Views

Engagement

Content volume

# Content & Upload Strategy Dashboard

Focuses on:

Video length performance

Upload day & month trends

Duration vs engagement/view relationships
