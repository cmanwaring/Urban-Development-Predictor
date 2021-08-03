-- Adding Primary Keys to tables --
ALTER TABLE average_price
ADD PRIMARY KEY (zipcode);

ALTER TABLE candidates
ADD PRIMARY KEY (zipcode);

ALTER TABLE homes
ADD PRIMARY KEY (zpid);

ALTER TABLE issued_permit_avg
ADD PRIMARY KEY (zipcode);

ALTER TABLE issued_permit_sum
ADD PRIMARY KEY (zipcode);

ALTER TABLE zipcode_avg_values
ADD PRIMARY KEY (zipcode);

-- Adding foreign keys to tables --
ALTER TABLE  homes
ADD CONSTRAINT constraint_fkey 
FOREIGN KEY (zipcode) 
REFERENCES average_price (zipcode);

ALTER TABLE average_price
ADD CONSTRAINT constraint_fkey
FOREIGN KEY (zipcode)
REFERENCES candidates (zipcode);

ALTER TABLE  zipcode_avg_values
ADD CONSTRAINT constraint_fkey 
FOREIGN KEY (zipcode) 
REFERENCES issued_permit_avg (zipcode);

ALTER TABLE  values_over_time
ADD CONSTRAINT constraint_fkey 
FOREIGN KEY (zipcode) 
REFERENCES zipcode_avg_values (zipcode);

ALTER TABLE  issued_permit_avg
ADD CONSTRAINT constraint_fkey 
FOREIGN KEY (zipcode) 
REFERENCES issued_permit_sum (zipcode);

ALTER TABLE  issued_permits
ADD CONSTRAINT constraint_fkey 
FOREIGN KEY (zipcode) 
REFERENCES issued_permit_sum (zipcode);

-- JOINS --
SELECT candidates.zipcode, average_price.avg_num_price_change, 
candidates.num_candidates
FROM candidates
INNER JOIN average_price ON candidates.zipcode=average_price.zipcode
ORDER BY num_candidates DESC;

