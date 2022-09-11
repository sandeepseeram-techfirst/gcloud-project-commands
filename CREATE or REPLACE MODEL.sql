CREATE or REPLACE MODEL
  taxirides.fare_model_238 OPTIONS (model_type='linear_reg',
    labels=['fare_amount_879']) AS
WITH
  taxitrips AS (
  SELECT
    *,
    ST_Distance(ST_GeogPoint(pickuplon, pickuplat), ST_GeogPoint(dropofflon, dropofflat)) AS euclidean
  FROM
    `taxirides.taxi_training_data_832` )
  SELECT
    *
  FROM
    taxitrips