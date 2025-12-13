-- DDL BETİĞİ: V1_1__create_guides_table.sql
-- Rehberler (guides) tablosu oluşturuluyor
-- -----------------------------------------------------

CREATE TABLE guides (
    guide_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE, 
    phone_number VARCHAR(20) UNIQUE,
    bio TEXT,
    hourly_rate DECIMAL(10, 2) NOT NULL CHECK (hourly_rate > 0),
    is_certified BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
