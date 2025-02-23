select g.name as genre, count(ag.artist_id) as artist_count from genres g 
join artistgenres ag on g.id = ag.genre_id
group by g.name;

select count(t.id) as track_count from tracks t 
join albums a on t.album_id = a.id
where a.release_year between 2019 and 2020;

select a.title as album, avg(t.duration) as avg_dur from tracks t 
join albums a on t.album_id = a.id
group by a.title;

select ar.name as artist from artists ar
where ar.id not in (
    select aa.artist_id from albumartists aa
    join albums a on aa.album_id = a.id
    where a.release_year = 2020
);

select distinct c.title as collection
from collections c
join collectiontracks ct on c.id = ct.collection_id
join tracks t on ct.track_id = t.id
join albums a on t.album_id = a.id
join albumartists aa on a.id = aa.album_id
where aa.artist_id = 1;
