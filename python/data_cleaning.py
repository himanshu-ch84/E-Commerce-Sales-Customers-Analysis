import pandas as pd
df=pd.read_csv('ecommerce.csv')
print(df.isnull().sum())
df.columns = df.columns.str.lower()
df.columns = df.columns.str.replace(' ', '_')
print(df.columns)
df["order_date"] = pd.to_datetime(
    df["order_date"],
    format="mixed"
)

df["order_date"] = df["order_date"].dt.strftime("%Y-%m-%d")

df.to_csv("ecommerce_sales_customers.csv", index=False)