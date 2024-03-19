# Parquet Files

[Parquet files](https://parquet.apache.org/) store tabular data in a format that is accessible to many data analysis tools,
including the PyData stack (via Pandas) and large-scale analysis engines (e.g., Spark).

There are a few variables we can adjust to lower the size of a Parquet file:]
- Compression Method
- Compression Level
- Number Format

The goal here is to establish the tradeoffs for each in terms of storage rate and file size.
