-- Таблица Жанры
CREATE TABLE Genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Таблица Исполнители
CREATE TABLE Artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Таблица связи Исполнители-Жанры
CREATE TABLE ArtistGenres (
    artist_id INT REFERENCES Artists(id),
    genre_id INT REFERENCES Genres(id),
    PRIMARY KEY (artist_id, genre_id)
);

-- Таблица Альбомы
CREATE TABLE Albums (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INT
);

-- Таблица связи Альбомы-Исполнители
CREATE TABLE AlbumArtists (
    album_id INT REFERENCES Albums(id),
    artist_id INT REFERENCES Artists(id),
    PRIMARY KEY (album_id, artist_id)
);

-- Таблица Треки
CREATE TABLE Tracks (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    duration INT NOT NULL,
    album_id INT REFERENCES Albums(id) 
);

-- Таблица Сборники
CREATE TABLE Collections (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INT
);

-- Таблица связи Сборники-Треки
CREATE TABLE CollectionTracks (
    collection_id INT REFERENCES Collections(id),
    track_id INT REFERENCES Tracks(id),
    PRIMARY KEY (collection_id, track_id)
);
