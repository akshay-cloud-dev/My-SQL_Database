-- File: 09-Indexes/rtree_index.sql
USE CompanyDB;

-- Spatial (R-Tree) index example (InnoDB spatial indexes supported)
DROP TABLE IF EXISTS GeoPoints;
CREATE TABLE GeoPoints (
    id INT PRIMARY KEY AUTO_INCREMENT,
    location POINT NOT NULL,
    SPATIAL INDEX idx_location (location)
) ENGINE = InnoDB;
-- -> (OK)

-- Insert example with ST_PointFromText
INSERT INTO GeoPoints (location) VALUES (ST_PointFromText('POINT(77.5946 12.9716)'));
SELECT id, ST_AsText(location) FROM GeoPoints;
-- -> shows stored point
