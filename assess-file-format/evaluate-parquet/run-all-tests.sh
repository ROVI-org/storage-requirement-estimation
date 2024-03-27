#! /bin/bash

for float_type in uint16 uint32 float32 float64; do
  papermill -p compression_type GZIP -p compression_level 9 -p float_type $float_type 0_store-in-parquet-file.ipynb - > /dev/null
    for comp_type in NONE BROTLI SNAPPY; do
      papermill -p compression_type $comp_type -p float_type $float_type 0_store-in-parquet-file.ipynb - > /dev/null
    done
done