-- DDL BETİĞİ: V1_4__create_guide_linking_tables.sql
-- Rehber - Bölge ve Rehber - Dil ilişki tabloları oluşturuluyor
-- -----------------------------------------------------

-- Rehber ve Bölgeler Arası İlişki Tablosu
CREATE TABLE guide_areas (
    guide_id BIGINT NOT NULL,
    area_id BIGINT NOT NULL,
    
    PRIMARY KEY (guide_id, area_id),
    
    -- Yabancı Anahtarlar (Foreign Keys)
    FOREIGN KEY (guide_id) REFERENCES guides(guide_id) ON DELETE CASCADE,
    FOREIGN KEY (area_id) REFERENCES areas(area_id) ON DELETE CASCADE
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Rehber ve Diller Arası İlişki Tablosu
CREATE TABLE guide_languages (
    guide_id BIGINT NOT NULL,
    language_id BIGINT NOT NULL,
    
    PRIMARY KEY (guide_id, language_id),
    
    -- Yabancı Anahtarlar (Foreign Keys)
    FOREIGN KEY (guide_id) REFERENCES guides(guide_id) ON DELETE CASCADE,
    FOREIGN KEY (language_id) REFERENCES languages(language_id) ON DELETE CASCADE
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
