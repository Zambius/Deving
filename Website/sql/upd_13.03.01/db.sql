ALTER TABLE stress_news ADD COLUMN `title_en` varchar(255) NOT NULL default '';
ALTER TABLE stress_news ADD COLUMN `content_en` text NOT NULL;
ALTER TABLE stress_news ADD COLUMN `full_en` text NOT NULL;
ALTER TABLE stress_poll ADD COLUMN `title_en` varchar(255) NOT NULL;
ALTER TABLE stress_poll ADD COLUMN `body_en` text NOT NULL;
ALTER TABLE stress_static ADD COLUMN `s_title_en` varchar(255) NOT NULL default 'title';
ALTER TABLE stress_static ADD COLUMN `s_content_en` text NOT NULL;