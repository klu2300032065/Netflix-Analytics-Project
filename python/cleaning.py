import pandas as pd

# Load dataset
df = pd.read_csv("../data/netflix_titles.csv")

# Show first rows
print(df.head())

# Dataset info
print(df.info())

# Missing values
print(df.isnull().sum())

# Fill missing values
df["director"] = df["director"].fillna("Unknown")
df["cast"] = df["cast"].fillna("Unknown")
df["country"] = df["country"].fillna("Unknown")
df["rating"] = df["rating"].fillna("Not Rated")

# Fix and convert date column
df["date_added"] = pd.to_datetime(
    df["date_added"].str.strip(),
    errors='coerce'
)

# Create new columns
df["year_added"] = df["date_added"].dt.year
df["month_added"] = df["date_added"].dt.month

# Save cleaned dataset
df.to_csv("../data/netflix_cleaned.csv", index=False)

print("Cleaning completed successfully!")