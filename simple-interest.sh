#!/bin/bash

# Simple Interest Calculator

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (% per year): " rate
read -p "Enter the time period (in years): " time

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $simple_interest" | bc)

echo "Simple Interest = $simple_interest"
echo "Total Amount = $total"
