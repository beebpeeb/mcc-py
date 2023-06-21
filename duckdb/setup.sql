-- Create trips table:
CREATE TABLE IF NOT EXISTS trips AS
  SELECT * FROM read_parquet('https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2023-03.parquet');

-- Create zones table:
CREATE TABLE IF NOT EXISTS zones AS
  SELECT * FROM read_csv_auto('https://d37ci6vzurychx.cloudfront.net/misc/taxi+_zone_lookup.csv');

-- Create Shakespeare corpus table:
CREATE TABLE IF NOT EXISTS shakespeare AS
  SELECT * FROM read_parquet('https://github.com/marhar/duckdb_tools/raw/main/full-text-shakespeare/shakespeare.parquet');

-- Create full text search index:
LOAD fts;
PRAGMA create_fts_index('shakespeare', 'line_id', 'text_entry');
