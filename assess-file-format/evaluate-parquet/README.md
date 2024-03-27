# Parquet Files

[Parquet files](https://parquet.apache.org/) store tabular data in a format that is accessible to many data analysis tools,
including the PyData stack (via Pandas) and large-scale analysis engines (e.g., Spark).

There are a few variables we can adjust to lower the size of a Parquet file:]
- Compression Method
- Compression Level
- Number Format

The goal here is to establish the tradeoffs for each in terms of storage rate and file size.

## Experiment Details

The storage experiment, executed in [`0_store-in-parquet-files`](./0_store-in-parquet-files.ipynb) writes our XCEL cycling data 
into a Parquet file along with any metadata needed to interpret it from disk.
We only write the measured values (voltage, current, temperature, time) for each row. 
Time is written in percision to the millisecond.

We vary the amount of rows to determine when the storage requirements (bytes/row) saturates.
The increase in storage efficiency with file size is due to mitigating the overhead for writing the metadata and any header information,
as well as any effects of compression.
