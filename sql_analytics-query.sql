CREATE OR REPLACE TABLE `uber-data-analysis-391604.uber_datset_2016.uber_table_analitics` as (
SELECT
p.VendorID,
q.tpep_pickup_datetime,
q.tpep_dropoff_datetime,
m.passenger_count,
n.trip_distance,
x.rate_code_name,
pick.pickup_latitude,
pick.pickup_longitude,
drop.dropoff_latitude,
drop.dropoff_longitude,
pay.payment_type_name,
p.fare_amount,
p.extra,
p.mta_tax,
p.tip_amount,
p.tolls_amount,
p.improvement_surcharge,
p.total_amount
FROM 
`uber-data-analysis-391604.uber_datset_2016.fact_table` p
JOIN `uber-data-analysis-391604.uber_datset_2016.datetime_dim` q on q.datetime_id=p.datetime_id
JOIN `uber-data-analysis-391604.uber_datset_2016.passenger_count_dim` m on m.passenger_count_id=p.passenger_count_id
JOIN `uber-data-analysis-391604.uber_datset_2016.trip_distance_dim` n on n.trip_distance_id=p.trip_distance_id
JOIN `uber-data-analysis-391604.uber_datset_2016.rate_code_dim` x on x.rate_code_id=p.rate_code_id
JOIN `uber-data-analysis-391604.uber_datset_2016.pickup_location_dim` pick on pick.pickup_location_id=p.pickup_location_id 
JOIN `uber-data-analysis-391604.uber_datset_2016.dropoff_location_dim` drop on drop.dropoff_location_id=p.dropoff_location_id 
JOIN `uber-data-analysis-391604.uber_datset_2016.payment_type_dim` pay on pay.payment_type_id=p.payment_type_id
);


