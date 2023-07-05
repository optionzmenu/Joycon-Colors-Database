-- Table to track Joy-Cons
CREATE TABLE JoyCons (
    joycon_id INT PRIMARY KEY,
    joycon_name VARCHAR(50) NOT NULL,
    color_id INT,
    Nin_official BOOLEAN,
    CONSTRAINT foreignkey_color
        FOREIGN KEY (color_id)
        REFERENCES Colors(color_id)
);

-- Table to track colors
CREATE TABLE Colors (
    color_id INT PRIMARY KEY,
    color_name VARCHAR(50) NOT NULL
);

-- Table to track third-party Joy-Cons
CREATE TABLE ThirdPartyJoyCons (
    joycon_id INT PRIMARY KEY,
    joycon_name VARCHAR(50) NOT NULL,
    color_id INT,
    Nin_official BOOLEAN,
    CONSTRAINT foreignkey_color
        FOREIGN KEY (color_id)
        REFERENCES Colors(color_id)
);