-- Select these columns:
SELECT t.tpep_pickup_datetime AS pickup_time,
       t.tpep_dropoff_datetime AS dropoff_time,
       z.Zone AS destination,
       t.total_amount AS fare
-- From these tables:
FROM trips t JOIN zones z ON t.DOLocationID = z.LocationID
-- Given the following conditions:
WHERE fare > 100
AND destination ILIKE '%airport%'
-- Sort like this:
ORDER BY destination, fare
