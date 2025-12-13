-- DDL BETİĞİ: V1_2__create_users_table.sql
-- Turistler (users) tablosu oluşturuluyor
-- -----------------------------------------------------

CREATE TABLE users (
    user_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(150) NOT NULL UNIQUE, 
    hashed_password VARCHAR(255) NOT NULL, -- Şifreler her zaman hash'lenmelidir!
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    country_of_residence VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
