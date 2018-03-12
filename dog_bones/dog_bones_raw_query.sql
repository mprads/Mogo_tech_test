SELECT dogs.id, COUNT(bones.dog_id) AS bones_quantity, AVG(bones.rating) AS average_rating
FROM dogs
LEFT JOIN bones
ON (dogs.id = bones.dog_id)
GROUP BY dogs.id;