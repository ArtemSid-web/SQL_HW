insert into artists (name) 
values('Zivert'), ('Maravi'), ('Gia Pika'), ('Imagine dragon');

update artists a 
set name = 'Miravi'
where id = 2

insert into genres (name) 
values('Pop-Rock'), ('Pop'), ('Hip-Hop');

insert into artistgenres (artist_id, genre_id) 
values(1, 2), (2, 2), (4, 1), (3, 3), (3, 2); 

insert into albums (title, release_year) 
values('Сияй', 2018), ('Memento Mori', 2020), ('Mercury - Act 2', 2022), ('Мир', 2024);

insert into albumartists (album_id, artist_id) 
values(1, 1), (2, 3), (3, 4), (4, 2), (4, 3); 

insert into tracks (title, duration, album_id) 
values('Еще хочу', 205, 1),
('Зеленые волны', 223, 1),
('Забирай всё', 224, 2),
('Memento Mori', 202, 2),
('My life', 225, 3),
('I do not like myself', 186, 3),
('Мир', 159, 4);

insert into collections (title, release_year) 
values ('Поп-хиты', 2018),
('Хип-Хоп хиты', 2021),
('Pop-rock top', 2022),
('Хиты 2024', 2024);

insert into collectiontracks (collection_id, track_id) 
values(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7);
