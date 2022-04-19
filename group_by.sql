-- Find the sum of totals in the invoice table grouped by billing_state.

SELECT billing_state, SUM(total)
FROM invoice
GROUP BY billing_state
ORDER BY billing_state;

-- Find the average track length (in milliseconds) by album. Order the table by the averages.

SELECT album_id, AVG(milliseconds)
FROM track
GROUP BY album_id
ORDER BY AVG(milliseconds);

-- Find a count of how many albums the artists with the ids 8 and 22 have respectively. Use COUNT, WHERE/IN, and GROUP BY.
SELECT COUNT(*)
FROM album
WHERE artist_id = 8 OR artist_id = 22
GROUP BY artist_id;