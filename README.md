# OmniHealth IT Operations: Advanced Employee Onboarding System

## 📌 The Business Problem
When new employees join a hospital or clinic, IT usually has to manually type in their information, figure out what software they need, and order their computers. This manual process takes too long, creates typos, and makes it hard to track if IT is meeting their deadlines. 

## 💡 The Solution
This project is an automated IT toolkit designed for a healthcare environment (OmniHealth). Instead of doing things manually, this system reads a master list of new hires and automatically processes them. 

It ensures that a new doctor in Oncology gets different access and hardware than a Data Analyst, while keeping a perfect record of every action for security auditors.

## ⚙️ How It Works (The Technology)
This toolkit is broken down into three main pieces:

1. **The Engine (PowerShell):** A script that automatically reads employee data to generate email addresses, assign specific Microsoft 365 licenses (E3 vs. E5), and assign the correct hardware (Standard vs. High-Performance).
2. **The Record Book (SQL):** A secure database that logs exactly *who* was created, *what* licenses they were given, and whether the IT team met their Service Level Agreement (SLA) deadline. 
3. **The Report Card (Power BI & Data):** The raw data (`OmniHealth-Hires.csv`) is formatted to be pulled directly into Power BI so leadership can see a visual dashboard of onboarding times and hardware costs. 

## 🏆 Why This Matters
* **Efficiency:** Turns hours of manual IT clicking into seconds of automation.
* **Security & Compliance:** Every single account creation is logged in a database for easy auditing.
* **Cost Tracking:** Leadership can easily see how many expensive software licenses and high-end laptops are being distributed across different departments.