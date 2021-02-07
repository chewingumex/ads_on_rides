SELECT
  E.rental_id AS rental_id,
  E.start_date AS start_date,
  F.end_date AS end_date,
  E.start_station_id AS start_station_id,
  E.start_station_name AS start_station_name,
  E.start_lon AS start_lon,
  E.start_lat AS start_lat,
  F.end_station_id AS end_sation_id,
  F.end_station_name AS end_station_name,
  F.end_lon AS end_lon,
  F.end_lat AS end_lat
FROM (
  SELECT
    A.rental_id AS rental_id,
    A.start_date AS start_date,
    A.start_station_id AS start_station_id,
    A.start_station_name AS start_station_name,
    B.longitude AS start_lon,
    B.latitude AS start_lat
  FROM
    `bigquery-public-data.london_bicycles.cycle_hire` A
  JOIN
    `bigquery-public-data.london_bicycles.cycle_stations` B
  ON
    A.start_station_id = B.id) AS E
JOIN (
  SELECT
    C.rental_id AS rental_id,
    C.end_date AS end_date,
    C.end_station_id AS end_station_id,
    C.end_station_name AS end_station_name,
    D.longitude AS end_lon,
    D.latitude AS end_lat
  FROM
    `bigquery-public-data.london_bicycles.cycle_hire` C
  JOIN
    `bigquery-public-data.london_bicycles.cycle_stations` D
  ON
    C.start_station_id = D.id) AS F
ON
  E.rental_id = F.rental_id