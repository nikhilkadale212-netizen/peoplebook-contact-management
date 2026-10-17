-- Peoplebook: Contact Management System (SQLite)
DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT NOT NULL,
  last_name  TEXT,
  phone      TEXT NOT NULL,
  email      TEXT,
  city       TEXT,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP,
  UNIQUE (phone)
);

INSERT INTO contacts (first_name, last_name, phone, email, city) VALUES
 ('Alex','Morgan','+1-202-555-0101','alex.morgan@example.com','Seattle'),
 ('Sam','Rivera','+1-202-555-0102','sam.rivera@example.com','Portland'),
 ('Jordan','Lee','+1-202-555-0103','jordan.lee@example.com','San Francisco'),
 ('Taylor','Brooks','+1-202-555-0104','taylor.brooks@example.com','Austin'),
 ('Casey','Patel','+1-202-555-0105','casey.patel@example.com','Chicago');

-- 1. ADD
INSERT INTO contacts (first_name, last_name, phone, email, city)
VALUES ('Riley','Khan','+1-202-555-0106','riley.khan@example.com','Boston');

-- 2. SEARCH
SELECT * FROM contacts
WHERE first_name LIKE '%sam%' OR last_name LIKE '%sam%'
   OR phone LIKE '%sam%' OR email LIKE '%sam%' OR city LIKE '%sam%'
ORDER BY first_name;

-- 3. EDIT
UPDATE contacts SET phone = '+1-202-555-0199' WHERE id = 2;

-- 4. DELETE
DELETE FROM contacts WHERE id = 6;

-- 5. COUNT
SELECT COUNT(*) AS total_contacts FROM contacts;
