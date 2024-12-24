-- create db tabs
DROP TABLE IF EXISTS toy_production;

CREATE TABLE toy_production (
  toy_id INT PRIMARY KEY,
  toy_name VARCHAR(100),
  previous_tags NVARCHAR(MAX),
  new_tags NVARCHAR(MAX)
);

-- test data
INSERT INTO toy_production VALUES
(1, 'Robot', '{["fun", "battery"]}', '{["smart", "battery", "educational", "scientific"]}'),
(2, 'Doll', '{["cute", "classic"]}', '{["cute", "collectible", "classic"]}'),
(3, 'Puzzle', '{["brain", "wood"]}', '{["educational", "wood", "strategy"]}');
