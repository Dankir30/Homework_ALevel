SELECT 
    film_name, actor_firstname, actor_lastname 
    FROM films  
    inner join actors 
    on(actors.actor_id = films.actor_id);  --film name + actors` name 
      film_name     | actor_firstname | actor_lastname
-------------------+-----------------+----------------
 Sherlock Holmes   | Robert          | Downey Jr.
 The Prestige      | Hugh            | Jackman
 Wrath of Man      | Jason           | Statham
 Grown Up          | Adam            | Sandler
 Seven Psychopaths | Colin           | Farrell
 Psycho            | Antony          | Perkins



SELECT 
    film_name, actor_firstname, actor_lastname  
    from films  
    right join actors 
    on(actors.actor_id = films.actor_id);  --film name + ALL actors` name

     film_name     | actor_firstname | actor_lastname
-------------------+-----------------+----------------
 Sherlock Holmes   | Robert          | Downey Jr.
 The Prestige      | Hugh            | Jackman
 Wrath of Man      | Jason           | Statham
 Grown Up          | Adam            | Sandler
 Seven Psychopaths | Colin           | Farrell
 Psycho            | Antony          | Perkins
                   | Brad            | Pitt
                   | Drew            | Barrymore
                   | David           | Tennant



SELECT 
    film_name, actor_firstname, actor_lastname 
    from films  
    left join actors 
    on(actors.actor_id = films.actor_id)
UNION
SELECT 
    film_name, actor_firstname, actor_lastname 
    from films  
    right join actors
    on(actors.actor_id = films.actor_id);  --joining of tables films and actors

         film_name     | actor_firstname | actor_lastname
-------------------+-----------------+----------------
                   | David           | Tennant
 Wrath of Man      | Jason           | Statham
 Seven Psychopaths | Colin           | Farrell
 Psycho            | Antony          | Perkins
 Sherlock Holmes   | Robert          | Downey Jr.
 The Prestige      | Hugh            | Jackman
                   | Drew            | Barrymore
                   | Brad            | Pitt
 Grown Up          | Adam            | Sandler




select f.imdb,  f.film_name, d.director_lname, d.director_fname 
    from films_directors as fd join
    films as f on fd.film_id=f.film_id
    join directors as d
    on fd.director_id=d.director_id 
    where f.imdb between 6 and 7.8 order by f.imdb;

 imdb |     film_name     | director_lname | director_fname
------+-------------------+----------------+----------------
  7.1 | Wrath of Man      | Ritchie        | Guy
  7.3 | Seven Psychopaths | McDonagh       | Martin
  7.6 | Sherlock Holmes   | Ritchie        | Guy
  7.8 | Grown Up          | Dugan          | Dennis




 select film_name, release_year 
    from films 
    where release_year > 2010 
    order by release_year;

     film_name     | release_year
-------------------+--------------
 Seven Psychopaths |         2012
 Wrath of Man      |         2021


select a.actor_lastname, a.actor_firstname, f.release_year, f.film_name, f.director_lastname, f.director_firstname
    from actors as a
    join films as f
    on a.actor_id = f.actor_id
    where a.actor_id > 4
    order by f.release_year desc;

 actor_lastname | actor_firstname | release_year |    film_name    | director_lastname | director_firstname
----------------+-----------------+--------------+-----------------+-------------------+--------------------
 Statham        | Jason           |         2021 | Wrath of Man    | Ritchie           | Guy
 Sandler        | Adam            |         2010 | Grown Up        | Dugan             | Dennis
 Downey Jr.     | Robert          |         2009 | Sherlock Holmes | Ritchie           | Guy
 Jackman        | Hugh            |         2006 | The Prestige    | Nolan             | Chirstopher
 Perkins        | Antony          |         1960 | Psycho          | Hitchcock         | Alfred
