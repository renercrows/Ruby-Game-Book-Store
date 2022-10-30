CREATE DATABASE Catalog_of_Things;

CREATE TABLE books(
    id INT GENERATED ALWAYS AS IDENTITY,
    publish_date DATE NOT NULL,
    archived BOOLEAN,
    cover_state VARCHAR(150),
    publisher VARCHAR(150),
    book_color VARCHAR(50),
    books_id INT,
    PRIMARY KEY(id),
    CONSTRAINT fk_labels FOREIGN KEY(books_id) REFERENCES labels(id)
);

CREATE TABLE games(
    id INT GENERATED ALWAYS AS IDENTITY,
    publish_date DATE NOT NULL,
    archived BOOLEAN,
    multiplayer BOOLEAN,
    last_played_at DATE NOT NULL,
    games_id INT,
    PRIMARY KEY(id),
    CONSTRAINT fk_authors FOREIGN KEY(games_id) REFERENCES authors(id)
);

CREATE TABLE labels(
    id INT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(50),
    color VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE authors(
    id INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    PRIMARY KEY(id)
);
