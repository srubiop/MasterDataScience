\! csvsql -d '^' ~/Data/opentraveldata/optd_airlines.csv | psql opentraveldata
\COPY optd_airlines FROM '~/Data/opentraveldata/optd_airlines.csv' DELIMITER '^' CSV HEADER
\! csvsql -d '^' ~/Data/opentraveldata/ref_airline_nb_of_flights.csv | psql opentraveldata
\COPY ref_airline_nb_of_flights FROM '~/Data/opentraveldata/ref_airline_nb_of_flights.csv' DELIMITER '^' CSV HEADER
SELECT l.*, r.one_name FROM ref_airline_nb_of_flights AS l LEFT OUTER JOIN (SELECT "2char_code", MIN(name) AS one_name FROM optd_airlines GROUP BY "2char_code") AS r ON l.airline_code_2c = r."2char_code";
