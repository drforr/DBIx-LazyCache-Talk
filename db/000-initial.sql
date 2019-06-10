--
-- Project
--
CREATE TABLE IF NOT EXISTS Project (
  id              INTEGER       NOT NULL UNIQUE,
  name            TEXT          NOT NULL,
  wholesale_price NUMERIC(12,2) NULL,
  retail_price    NUMERIC(12,2) NULL,
  profit_margin   NUMERIC(2,2)  NULL
);

INSERT INTO Project( id, name, wholesale_price, profit_margin )
             VALUES( 1, '737-MAX', 100000000.00, 0.01 )
;

--
-- Item
--
CREATE TABLE IF NOT EXISTS Item (
  id         INTEGER       NOT NULL UNIQUE,
  name       TEXT          NOT NULL,
  price      NUMERIC(12,2) NULL,
  quantity   INTEGER NULL,
  project_id INTEGER NOT NULL REFERENCES Project(id)
);

INSERT INTO Item( id, name, price, quantity, project_id )
          VALUES( 1, 'Wing', 2, 10000000.00, 1 ),
                ( 2, 'Fuselage', 1, 20000000.00, 1 )
;
