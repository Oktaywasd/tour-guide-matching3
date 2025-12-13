-- DDL BETİĞİ: V1_3__create_areas_and_languages.sql
-- Bölgeler ve Diller tablosu oluşturuluyor
-- -----------------------------------------------------

-- Hizmet Bölgeleri (Areas) Tablosu
CREATE TABLE areas (
    area_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Diller (Languages) Tablosu
CREATE TABLE languages (
    language_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
