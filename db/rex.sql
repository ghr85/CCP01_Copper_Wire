DROP TABLE transactions;
DROP TABLE merchants;
DROP TABLE tags;

CREATE TABLE tags(
  id SERIAL4 PRIMARY KEY,
  tag_name_str VARCHAR(255)
);

CREATE TABLE merchants(
  id SERIAL4 PRIMARY KEY,
  merchant_name_str VARCHAR(255)
);

CREATE TABLE transactions(
  id SERIAL4 PRIMARY KEY,
  tag_id_int INT4 REFERENCES tags(id),
  merchant_id_int INT4 REFERENCES merchants(id),
  amount INT4
);
