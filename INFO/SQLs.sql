Створюємо базу данних

CREATE DATABASE demo_db1;

Створюємо таблицю робітників

CREATE TABLE IF NOT EXISTS employees
( id INTEGER NOT NULL AUTO_INCREMENT,
  name VARCHAR(128) NOT NULL,
  position VARCHAR(128) NOT NULL,
  phone VARCHAR(15) NOT NULL,
  PRIMARY KEY (id)
);

Додаємо привілеї прав доступу для користувача

GRANT CREATE, ALTER, DROP
ON demo_db1.*
TO 'dev'@'localhost';