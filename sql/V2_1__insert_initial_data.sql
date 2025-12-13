-- DML BETİĞİ: V2_1__insert_initial_data.sql
-- Uygulamanın çalışması için gerekli başlangıç verileri (seeding)
-- -----------------------------------------------------------------

-- Diller (languages)
INSERT INTO languages (name) VALUES 
('Turkish'), 
('English'), 
('German'), 
('French'), 
('Arabic'), 
('Russian');

-- Bölgeler (areas)
INSERT INTO areas (name, city, country) VALUES 
('Sultanahmet', 'Istanbul', 'Turkey'),
('Taksim Square', 'Istanbul', 'Turkey'),
('Kadıköy', 'Istanbul', 'Turkey'),
('Old Town', 'Izmir', 'Turkey'),
('Goreme Valley', 'Nevsehir', 'Turkey'),
('Fairy Chimneys', 'Kapadokya', 'Turkey'),
('Ephesus Ruins', 'Izmir', 'Turkey');
