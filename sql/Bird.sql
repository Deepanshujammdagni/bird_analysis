-- Total Observation
SELECT COUNT(*) AS total_observations
FROM bird_data;

-- forest vs grassland habitat comparison
SELECT Location_Type, COUNT(*) AS observations
FROM bird_data
GROUP BY Location_Type;

-- spiecies diversity
SELECT Location_Type, COUNT(DISTINCT Scientific_Name) AS species_count
FROM bird_data
GROUP BY Location_Type;

-- Top Spiecies
SELECT Common_Name, COUNT(*) AS count
FROM bird_data
GROUP BY Common_Name
ORDER BY count DESC
LIMIT 10;

-- Peak activity time
SELECT HOUR(Start_Time) AS hour, COUNT(*) AS observations
FROM bird_data
GROUP BY hour
ORDER BY hour;

-- Environmental impact
SELECT Location_Type, 
       AVG(Temperature) AS avg_temp,
       AVG(Humidity) AS avg_humidity
FROM bird_data
GROUP BY Location_Type;

-- Biodiversity hotspots
SELECT Plot_Name, COUNT(DISTINCT Scientific_Name) AS species_count
FROM bird_data
GROUP BY Plot_Name
ORDER BY species_count DESC
LIMIT 10;

-- preferred habitat
SELECT Common_Name, Location_Type, COUNT(*) AS count
FROM bird_data
GROUP BY Common_Name, Location_Type
ORDER BY count DESC;

-- flyover behavior
SELECT Flyover_Observed, COUNT(*) AS count
FROM bird_data
GROUP BY Flyover_Observed;