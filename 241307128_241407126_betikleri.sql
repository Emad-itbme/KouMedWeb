

CREATE TABLE IF NOT EXISTS users (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  INDEX users_email_index (email)
) ENGINE=InnoDB;

INSERT INTO users (name, email, password, created_at, updated_at)
VALUES
('Ahmet Yılmaz', 'ahmet.yilmaz@example.com', 'password123', NOW(), NOW()),
('Ayşe Demir', 'ayse.demir@example.com', 'password123', NOW(), NOW()),
('Mehmet Kaya', 'mehmet.kaya@example.com', 'password123', NOW(), NOW()),
('Fatma Çelik', 'fatma.celik@example.com', 'password123', NOW(), NOW()),
('Ali Şahin', 'ali.sahin@example.com', 'password123', NOW(), NOW()),
('Elif Özkan', 'elif.ozkan@example.com', 'password123', NOW(), NOW()),
('Burak Arslan', 'burak.arslan@example.com', 'password123', NOW(), NOW()),
('Zeynep Aksoy', 'zeynep.aksoy@example.com', 'password123', NOW(), NOW());

CREATE TABLE IF NOT EXISTS products (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  sku VARCHAR(255) NOT NULL UNIQUE,
  type VARCHAR(255) NOT NULL,
  parent_id INT(10) UNSIGNED DEFAULT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  INDEX products_sku_index (sku),
  CONSTRAINT products_parent_id_foreign FOREIGN KEY (parent_id) REFERENCES products (id) ON UPDATE RESTRICT ON DELETE SET NULL
) ENGINE=InnoDB;

INSERT INTO products (sku, type, parent_id, created_at, updated_at)
VALUES
('SKU001', 'Tıbbi Cihaz', NULL, NOW(), NOW()),
('SKU002', 'Laboratuvar Ekipmanı', NULL, NOW(), NOW()),
('SKU003', 'Cerrahi Alet', NULL, NOW(), NOW()),
('SKU004', 'Görüntüleme Cihazı', NULL, NOW(), NOW()),
('SKU005', 'Hasta Monitörü', NULL, NOW(), NOW()),
('SKU006', 'Ventilatör', NULL, NOW(), NOW()),
('SKU007', 'Defibrilatör', NULL, NOW(), NOW()),
('SKU008', 'Enjektör Pompası', NULL, NOW(), NOW());

CREATE TABLE IF NOT EXISTS product_images (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  path VARCHAR(255) NOT NULL,
  product_id INT(10) UNSIGNED NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  INDEX product_images_product_id_index (product_id),
  CONSTRAINT product_images_product_id_foreign FOREIGN KEY (product_id) REFERENCES products (id) ON UPDATE RESTRICT ON DELETE CASCADE
) ENGINE=InnoDB;

INSERT INTO product_images (path, product_id, created_at, updated_at)
VALUES
('/images/urun1.jpg', 1, NOW(), NOW()),
('/images/urun2.jpg', 2, NOW(), NOW()),
('/images/urun3.jpg', 3, NOW(), NOW()),
('/images/urun4.jpg', 4, NOW(), NOW()),
('/images/urun5.jpg', 5, NOW(), NOW()),
('/images/urun6.jpg', 6, NOW(), NOW()),
('/images/urun7.jpg', 7, NOW(), NOW()),
('/images/urun8.jpg', 8, NOW(), NOW());

CREATE TABLE IF NOT EXISTS cart (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  customer_email VARCHAR(255) NOT NULL,
  customer_id INT(10) UNSIGNED DEFAULT NULL,
  items_count INT(11) NOT NULL DEFAULT 0,
  items_qty DECIMAL(12,4) NOT NULL DEFAULT 0.0000,
  grand_total DECIMAL(12,4) NOT NULL DEFAULT 0.0000,
  is_guest TINYINT(1) NOT NULL DEFAULT 1,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  INDEX cart_customer_id_index (customer_id),
  CONSTRAINT cart_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES users (id) ON UPDATE RESTRICT ON DELETE CASCADE
) ENGINE=InnoDB;

INSERT INTO cart (customer_email, customer_id, items_count, items_qty, grand_total, is_guest, created_at, updated_at)
VALUES
('ahmet.yilmaz@example.com', 1, 2, 5.0000, 50.0000, 0, NOW(), NOW()),
('ayse.demir@example.com', 2, 3, 7.0000, 70.0000, 0, NOW(), NOW()),
('mehmet.kaya@example.com', 3, 1, 2.0000, 20.0000, 0, NOW(), NOW()),
('fatma.celik@example.com', 4, 4, 10.0000, 100.0000, 0, NOW(), NOW()),
('ali.sahin@example.com', 5, 5, 15.0000, 150.0000, 0, NOW(), NOW()),
('elif.ozkan@example.com', 6, 2, 5.0000, 50.0000, 1, NOW(), NOW()),
('burak.arslan@example.com', 7, 3, 7.0000, 70.0000, 1, NOW(), NOW()),
('zeynep.aksoy@example.com', 8, 1, 2.0000, 20.0000, 1, NOW(), NOW());

CREATE TABLE IF NOT EXISTS cart_items (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  quantity INT(11) NOT NULL DEFAULT 1,
  sku VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(12,4) NOT NULL DEFAULT 0.0000,
  total DECIMAL(12,4) NOT NULL DEFAULT 0.0000,
  product_id INT(10) UNSIGNED NOT NULL,
  cart_id INT(10) UNSIGNED NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  INDEX cart_items_product_id_index (product_id),
  INDEX cart_items_cart_id_index (cart_id),
  CONSTRAINT cart_items_product_id_foreign FOREIGN KEY (product_id) REFERENCES products (id) ON UPDATE RESTRICT ON DELETE CASCADE,
  CONSTRAINT cart_items_cart_id_foreign FOREIGN KEY (cart_id) REFERENCES cart (id) ON UPDATE RESTRICT ON DELETE CASCADE
) ENGINE=InnoDB;

INSERT INTO cart_items (quantity, sku, name, price, total, product_id, cart_id, created_at, updated_at)
VALUES
(2, 'SKU001', 'Dijital Tansiyon Aleti', 25000.0000, 50000.0000, 1, 1, NOW(), NOW()),
(3, 'SKU002', 'Mikroskop', 23333.3333, 70000.0000, 2, 2, NOW(), NOW()),
(1, 'SKU003', 'Cerrahi Makas', 20000.0000, 20000.0000, 3, 3, NOW(), NOW()),
(4, 'SKU004', 'Ultrason Cihazı', 25000.0000, 100000.0000, 4, 4, NOW(), NOW()),
(5, 'SKU005', 'EKG Monitörü', 30000.0000, 150000.0000, 5, 5, NOW(), NOW()),
(2, 'SKU006', 'Yoğun Bakım Ventilatörü', 25000.0000, 50000.0000, 6, 6, NOW(), NOW()),
(3, 'SKU007', 'Otomatik Defibrilatör', 23333.3333, 70000.0000, 7, 7, NOW(), NOW()),
(1, 'SKU008', 'Akıllı Enjektör Pompası', 20000.0000, 20000.0000, 8, 8, NOW(), NOW());

CREATE TABLE IF NOT EXISTS orders (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  increment_id VARCHAR(255) NOT NULL UNIQUE,
  status VARCHAR(255) NOT NULL,
  customer_email VARCHAR(255) NOT NULL,
  customer_id INT(10) UNSIGNED DEFAULT NULL,
  grand_total DECIMAL(12,4) NOT NULL DEFAULT 0.0000,
  is_guest TINYINT(1) NOT NULL DEFAULT 1,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  INDEX orders_customer_id_index (customer_id),
  CONSTRAINT orders_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES users (id) ON UPDATE RESTRICT ON DELETE SET NULL
) ENGINE=InnoDB;

INSERT INTO orders (increment_id, status, customer_email, customer_id, grand_total, is_guest, created_at, updated_at)
VALUES
('ORD-1', 'Beklemede', 'ahmet.yilmaz@example.com', 1, 50000.0000, 0, NOW(), NOW()),
('ORD-2', 'Tamamlandı', 'ayse.demir@example.com', 2, 70000.0000, 0, NOW(), NOW()),
('ORD-3', 'İptal Edildi', 'mehmet.kaya@example.com', 3, 20000.0000, 0, NOW(), NOW()),
('ORD-4', 'Beklemede', 'fatma.celik@example.com', 4, 100000.0000, 0, NOW(), NOW()),
('ORD-5', 'Tamamlandı', 'ali.sahin@example.com', 5, 150000.0000, 0, NOW(), NOW()),
('ORD-6', 'Beklemede', 'elif.ozkan@example.com', 6, 50000.0000, 1, NOW(), NOW()),
('ORD-7', 'Tamamlandı', 'burak.arslan@example.com', 7, 70000.0000, 1, NOW(), NOW()),
('ORD-8', 'İptal Edildi', 'zeynep.aksoy@example.com', 8, 20000.0000, 1, NOW(), NOW());

select * from orders;

CREATE TABLE IF NOT EXISTS order_items (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  sku VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  qty_ordered INT(11) NOT NULL DEFAULT 0,
  price DECIMAL(12,4) NOT NULL DEFAULT 0.0000,
  total DECIMAL(12,4) NOT NULL DEFAULT 0.0000,
  product_id INT(10) UNSIGNED NOT NULL,
  order_id INT(10) UNSIGNED NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  INDEX order_items_order_id_index (order_id),
  CONSTRAINT order_items_order_id_foreign FOREIGN KEY (order_id) REFERENCES orders (id) ON UPDATE RESTRICT ON DELETE CASCADE,
  CONSTRAINT order_items_product_id_foreign FOREIGN KEY (product_id) REFERENCES products (id) ON UPDATE RESTRICT ON DELETE CASCADE
) ENGINE=InnoDB;

INSERT INTO order_items (sku, name, qty_ordered, price, total, product_id, order_id, created_at, updated_at)
VALUES
('BMD-001', 'Portable ECG Monitor', 2, 25000.0000, 50000.0000, 1, 1, NOW() - INTERVAL 5 DAY, NOW()),
('BMD-005', 'Vital Signs Monitor', 1, 25000.0000, 25000.0000, 5, 1, NOW() - INTERVAL 5 DAY, NOW()),
('BMD-002', 'Laser Therapy Device', 2, 30000.0000, 60000.0000, 2, 2, NOW() - INTERVAL 4 DAY, NOW()),
('BMD-003', 'Surgical Scalpel Set', 3, 20000.0000, 60000.0000, 3, 3, NOW() - INTERVAL 3 DAY, NOW()),
('BMD-004', 'Ultrasound Imaging System', 2, 25000.0000, 50000.0000, 4, 3, NOW() - INTERVAL 3 DAY, NOW()),
('BMD-006', 'ICU Ventilator', 2, 30000.0000, 60000.0000, 6, 4, NOW() - INTERVAL 2 DAY, NOW()),
('BMD-007', 'Automated Defibrillator', 2, 15000.0000, 30000.0000, 7, 4, NOW() - INTERVAL 2 DAY, NOW()),
('BMD-008', 'Smart Infusion Pump', 1, 25000.0000, 25000.0000, 8, 5, NOW() - INTERVAL 1 DAY, NOW()),
('BMD-001', 'Portable ECG Monitor', 2, 25000.0000, 50000.0000, 1, 6, NOW() - INTERVAL 1 DAY, NOW()),
('BMD-006', 'ICU Ventilator', 1, 35000.0000, 35000.0000, 6, 6, NOW() - INTERVAL 1 DAY, NOW()),
('BMD-005', 'Vital Signs Monitor', 2, 25000.0000, 50000.0000, 5, 7, NOW() - INTERVAL 1 DAY, NOW()),
('BMD-003', 'Surgical Scalpel Set', 1, 20000.0000, 20000.0000, 3, 8, NOW(), NOW()),
('BMD-007', 'Automated Defibrillator', 2, 22500.0000, 45000.0000, 7, 8, NOW(), NOW());


CREATE TABLE IF NOT EXISTS order_transactions (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  transaction_id VARCHAR(255) NOT NULL,
  status VARCHAR(255) NOT NULL,
  amount DECIMAL(12,4) NOT NULL DEFAULT 0.0000,
  payment_method VARCHAR(255) NOT NULL,
  order_id INT(10) UNSIGNED NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  INDEX order_transactions_order_id_index (order_id),
  CONSTRAINT order_transactions_order_id_foreign FOREIGN KEY (order_id) REFERENCES orders (id) ON UPDATE RESTRICT ON DELETE CASCADE
) ENGINE=InnoDB;

INSERT INTO order_transactions (transaction_id, status, amount, payment_method, order_id, created_at, updated_at)
VALUES
('TXN-20250518-001', 'Pending', 75000.0000, 'Credit Card', 1, NOW() - INTERVAL 5 DAY, NOW()),
('TXN-20250518-002', 'Success', 60000.0000, 'Bank Transfer', 2, NOW() - INTERVAL 4 DAY, NOW()),
('TXN-20250518-003', 'Failed', 110000.0000, 'Credit Card', 3, NOW() - INTERVAL 3 DAY, NOW()),
('TXN-20250518-004', 'Pending', 90000.0000, 'Bank Transfer', 4, NOW() - INTERVAL 2 DAY, NOW()),
('TXN-20250518-005', 'Success', 25000.0000, 'Credit Card', 5, NOW() - INTERVAL 1 DAY, NOW()),
('TXN-20250518-006', 'Pending', 85000.0000, 'Bank Transfer', 6, NOW() - INTERVAL 1 DAY, NOW()),
('TXN-20250518-007', 'Success', 50000.0000, 'Credit Card', 7, NOW() - INTERVAL 1 DAY, NOW()),
('TXN-20250518-008', 'Failed', 65000.0000, 'Credit Card', 8, NOW(), NOW());


CREATE TABLE IF NOT EXISTS order_status_logs (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  order_id INT(10) UNSIGNED NOT NULL,
  old_status VARCHAR(255) NOT NULL,
  new_status VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT order_status_logs_order_id_foreign FOREIGN KEY (order_id) REFERENCES orders (id) ON UPDATE RESTRICT ON DELETE CASCADE
) ENGINE=InnoDB;

INSERT INTO order_status_logs (order_id, old_status, new_status, created_at)
VALUES
(1, 'New', 'Pending', NOW() - INTERVAL 5 DAY + INTERVAL 1 HOUR),
(2, 'New', 'Processing', NOW() - INTERVAL 4 DAY + INTERVAL 1 HOUR),
(2, 'Processing', 'Completed', NOW() - INTERVAL 4 DAY + INTERVAL 2 HOUR),
(3, 'New', 'Pending', NOW() - INTERVAL 3 DAY + INTERVAL 1 HOUR),
(3, 'Pending', 'Canceled', NOW() - INTERVAL 3 DAY + INTERVAL 2 HOUR),
(4, 'New', 'Pending', NOW() - INTERVAL 2 DAY + INTERVAL 1 HOUR),
(5, 'New', 'Processing', NOW() - INTERVAL 1 DAY + INTERVAL 1 HOUR),
(5, 'Processing', 'Completed', NOW() - INTERVAL 1 DAY + INTERVAL 2 HOUR),
(6, 'New', 'Pending', NOW() - INTERVAL 1 DAY + INTERVAL 1 HOUR),
(7, 'New', 'Processing', NOW() - INTERVAL 1 DAY + INTERVAL 1 HOUR),
(7, 'Processing', 'Completed', NOW() - INTERVAL 1 DAY + INTERVAL 2 HOUR),
(8, 'New', 'Pending', NOW() + INTERVAL 1 HOUR),
(8, 'Pending', 'Canceled', NOW() + INTERVAL 2 HOUR);
select * from order_status_logs;


-- View 1
CREATE VIEW customer_order_summary AS
SELECT 
  u.id AS customer_id,
  u.name AS customer_name,
  u.email AS customer_email,
  COUNT(o.id) AS total_orders,
  COALESCE(SUM(o.grand_total), 0) AS total_spent
FROM users u
LEFT JOIN orders o ON u.id = o.customer_id
GROUP BY u.id, u.name, u.email;
SELECT * FROM customer_order_summary; 

-- VIEW 2
CREATE VIEW popular_products AS
SELECT 
  p.id AS product_id,
  p.sku AS product_sku,
  p.type AS product_type,
  COALESCE(SUM(oi.qty_ordered), 0) AS total_quantity_ordered
FROM products p
LEFT JOIN order_items oi ON p.id = oi.product_id
GROUP BY p.id, p.sku, p.type
ORDER BY total_quantity_ordered DESC;
SELECT * FROM popular_products; 


-- VIEW 3
CREATE VIEW active_carts AS 
SELECT 
  c.id AS cart_id,
  c.customer_email,
  u.name AS customer_name,
  c.items_count,
  c.items_qty,
  c.grand_total,
  GROUP_CONCAT(ci.name) AS item_names
FROM cart c
LEFT JOIN users u ON c.customer_id = u.id
LEFT JOIN cart_items ci ON c.id = ci.cart_id
WHERE c.is_guest = 0 OR c.created_at >= NOW() - INTERVAL 7 DAY
GROUP BY c.id, c.customer_email, u.name, c.items_count, c.items_qty, c.grand_total;
SELECT * FROM active_carts; 

-- VIEW 4
CREATE VIEW recent_transactions AS
SELECT 
  t.id AS transaction_id,
  t.transaction_id AS payment_transaction_id,
  t.status AS transaction_status,
  t.amount,
  t.payment_method,
  o.increment_id AS order_increment_id,
  o.customer_email,
  t.created_at
FROM order_transactions t
JOIN orders o ON t.order_id = o.id
WHERE t.created_at >= NOW() - INTERVAL 30 DAY
ORDER BY t.created_at DESC;
SELECT * FROM recent_transactions;

-- Trigger (1): Auto-Update User Timestamps
DELIMITER //
CREATE TRIGGER before_users_update
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
  SET NEW.updated_at = NOW();
END //
DELIMITER ;

UPDATE users
SET name = 'Ahmet Yılmaz Updated'
WHERE id = 1;

SELECT * FROM users;

-- Trigger (2); Update Product Stock on Order Completion
DELIMITER //
CREATE TRIGGER after_order_completed
AFTER UPDATE ON orders
FOR EACH ROW
BEGIN
  IF NEW.status = 'Tamamlandı' THEN
    UPDATE products p
    JOIN order_items oi ON p.id = oi.product_id
    SET p.stock = p.stock - oi.qty_ordered
    WHERE oi.order_id = NEW.id;
  END IF;
END //
DELIMITER ;


--  Trigger(3): Log Order Status Changes
DELIMITER //
CREATE TRIGGER after_order_status_update
AFTER UPDATE ON orders
FOR EACH ROW
BEGIN
  IF OLD.status != NEW.status THEN
    INSERT INTO order_status_logs (order_id, old_status, new_status, created_at)
    VALUES (NEW.id, OLD.status, NEW.status, NOW());
  END IF;
END //
DELIMITER ;


UPDATE orders
SET status = 'İptal Edildi'
WHERE id = 2;

SELECT * FROM order_status_logs WHERE order_id = 2; 

-- Trigger(4): Prevent Duplicate Product SKUs
DELIMITER //
CREATE TRIGGER before_products_insert
BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  DECLARE product_exists INT;
  SELECT COUNT(*) INTO product_exists FROM products WHERE sku = NEW.sku;

  IF product_exists > 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Duplicate SKU: This SKU already exists.';
  END IF;
END //
DELIMITER ;

INSERT INTO products (sku, type, created_at, updated_at)
VALUES ('SKU0101', 'Yeni Ürün', NOW(), NOW()); 

-- Trigger(5): Auto-Calculate Total for Order Items
DELIMITER //
CREATE TRIGGER before_order_items_insert
BEFORE INSERT ON order_items
FOR EACH ROW
BEGIN
  SET NEW.total = NEW.qty_ordered * NEW.price;
END //

INSERT INTO order_items (sku, name, qty_ordered, price, product_id, order_id, created_at, updated_at)
VALUES ('BMD-00009', 'New Product', 3, 20000.0000, 1, 1, NOW(), NOW());
SELECT * FROM order_items WHERE order_id = 1; 


CREATE TRIGGER before_order_items_update
BEFORE UPDATE ON order_items
FOR EACH ROW
BEGIN
  SET NEW.total = NEW.qty_ordered * NEW.price;
END //
DELIMITER ;

UPDATE order_items
SET qty_ordered = 4, price = 25000.0000
WHERE id = 1;

SELECT * FROM order_items WHERE id = 1;









