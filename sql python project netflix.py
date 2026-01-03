import mysql.connector
import pandas as pd

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="arun123",
    database="netflix_db"
)

query = "SELECT * FROM netflix"
df = pd.read_sql(query, conn)

print(df.head())


import matplotlib.pyplot as plt

df['type'].value_counts().plot(kind='bar')
plt.title("Movies vs TV Shows on Netflix")
plt.xlabel("Type")
plt.ylabel("Count")
plt.show()


df.groupby('release_year').size().plot()
plt.title("Netflix Content Over Years")
plt.xlabel("Year")
plt.ylabel("Count")
plt.show()
