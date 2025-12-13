-- DDL BETİĞİ: V1_5__create_bookings_table.sql
-- Rezervasyonlar (bookings) tablosu oluşturuluyor
-- -----------------------------------------------------

-- Rezervasyon Durumları için ENUM tipi kullanıyoruz (ya da küçük bir tablo)
-- MariaDB'de ENUM direkt kullanılabileceği için basitlik adına ENUM tercih edelim.
-- Alternatif olarak, daha karmaşık projelerde 'booking_statuses' adında ayrı bir tablo oluşturulabilir.

CREATE TABLE bookings (
    booking_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    
    -- Kimin kiminle eşleştiği
    user_id BIGINT NOT NULL, 
    guide_id BIGINT NOT NULL,
    
    -- Rezervasyon Detayları
    booking_date DATETIME NOT NULL,
    duration_hours DECIMAL(4, 2) NOT NULL CHECK (duration_hours > 0),
    total_price DECIMAL(10, 2) NOT NULL CHECK (total_price > 0),
    
    -- Rezervasyon Durumu
    status ENUM('PENDING', 'CONFIRMED', 'CANCELLED_BY_USER', 'CANCELLED_BY_GUIDE', 'COMPLETED') NOT NULL DEFAULT 'PENDING',
    
    -- Yabancı Anahtarlar
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE RESTRICT, -- Kullanıcı silinse bile booking kalmalı (RESTRICT)
    FOREIGN KEY (guide_id) REFERENCES guides(guide_id) ON DELETE RESTRICT, -- Rehber silinse bile booking kalmalı (RESTRICT)
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
