#### Aufgabe 1

a) 

```sql
 SELECT COUNT(name) 
 FROM actress;
 count
-------
  3479
(1 row)
```



b)

```sql
SELECT producer.name 
FROM producer 
LEFT JOIN movie ON producer.movie_id = movie.mid 
WHERE movie.mid IS NULL 
ORDER BY producer.name ASC;
          name
-------------------------
 Bovaira, Fernando
 Briskin, Frederick
 Hofmann, Trish
 Horan, Ralph
 Kousakis, John Peter
 Matouk, Antonio
 Potamkin, Buzz
 Ruiz Sandoval, Humberto
 Scorsese, Martin
 Winter, Donna (II)
(10 rows)
```



c)

```sql
SELECT m1.title, m2.title 
FROM movie m1 
JOIN movie m2 ON m1.mid <> m2.mid 
JOIN actor a1 ON m1.mid = a1.movie_id 
JOIN actor a2 ON m2.mid = a2.movie_id 
WHERE a1.name = a2.name 
ORDER BY m2.title;  
title                                       											 |                                      title

------------------------------------------------------------------------------------+------------------------------------------------------------------------------------
 Ya shagayu po Moskve                                                               | 34-j skoryj
 Entre chats et loups                                                                    | 4 aventures de Reinette et Mirabelle
 Dame de lieudit, La                                                                     | 4 aventures de Reinette et Mirabelle
 Parfois trop d'amour                                                                  | └ la vitesse d'un cheval au galop
(826 rows)
```





d) 

```sql
SELECT actor.name AS name 
FROM actor 
JOIN movie ON movie.mid = actor.movie_id 
WHERE movie.title = 'Edge of Night, The' 
UNION ALL SELECT producer.name AS name 
FROM producer 
JOIN movie ON movie.mid = producer.movie_id 
WHERE movie.title = 'Edge of Night, The';

           name
-----------------------------
 Tammi, Tom
 Taylor, Charles (IV)
 Theoharous, Theodore
 Thoma, Carl
 (286 rows)
 
 
 ---
SELECT actor.name AS name 
FROM actor 
JOIN movie ON movie.mid = actor.movie_id 
WHERE movie.title = 'Edge of Night, The' 
UNION DISTINCT SELECT producer.name AS name 
FROM producer 
JOIN movie ON movie.mid = producer.movie_id 
WHERE movie.title = 'Edge of Night, The';

         name
------------------------
 Baio, Joey
 Arnold, Victor (II)
 Hall, James (II)
 Scheider, Roy
 Crowley, Matt
 Granger, Farley
(284 rows)
```





e) 

```sql
SELECT movie.title, 
COUNT(DISTINCT actor.name) + COUNT(DISTINCT actress.name) AS actress_count 
FROM movie 
LEFT JOIN actor ON movie.mid = actor.movie_id 
LEFT JOIN actress ON movie.mid = actress.movie_id 
GROUP BY movie.title 
ORDER BY actress_count 
DESC FETCH FIRST 3 ROWS ONLY;
             title             | actress_count
-------------------------------+---------------
 General Hospital              |          1089
 Edge of Night, The            |           465
 Meister Eder und sein Pumuckl |            92
(3 rows)
```

f) 

```sql
SELECT actor_name, 
COUNT(*) AS movie_count 
FROM ( SELECT name AS actor_name, movie_id 
      FROM actor 
      UNION ALL SELECT name AS actor_name, movie_id 
      FROM actress) AS combined_table 
      GROUP BY actor_name 
      ORDER BY movie_count 
      DESC FETCH FIRST 3 ROWS ONLY;

      actor_name      | movie_count
----------------------+-------------
 Richardson, Jack (I) |           5
 Bayrhammer, Gustl    |           5
 Roy, Nirupa          |           4
(3 rows)
```



#### Aufgabe 2

a)

```sql
SELECT actor.name 
FROM actor 
JOIN movie ON actor.movie_id = movie.mid 
JOIN genre ON movie.mid = genre.movie_id 
WHERE genre.genre = 'Action' 
AND actor.name LIKE 'Tu%' 
ORDER BY actor.name ASC;

     name
-------------------
 Tucker, Marcellus
(1 Zeile)
```

b)

```sql
SELECT actor.name 
FROM actor 
JOIN movie ON actor.movie_id = movie.mid 
JOIN genre ON movie.mid = genre.movie_id 
WHERE genre.genre = 'Action' 
AND actor.name LIKE 'Tu%' 
AND actor.id NOT IN (
    SELECT actor.id 
    FROM actor 
    JOIN movie ON actor.movie_id = movie.mid 
    JOIN genre ON movie.mid = genre.movie_id 
    WHERE genre.genre <> 'Action');

    name
-------------------
 Tucker, Marcellus
(1 Zeile)
```



c)

```sql
SELECT DISTINCT producer.name
FROM producer
JOIN movie ON producer.movie_id = movie.mid
JOIN genre ON movie.mid = genre.movie_id
WHERE movie.year = 2001
AND genre.genre IN (
    SELECT genre.genre
    FROM genre
    GROUP BY genre.genre
    HAVING COUNT(DISTINCT genre.movie_id) > 200
);

       name
--------------------
 Betsworth, Marc
 Circelli, Nick
 Delest, Nathalie
 Greenberg, Marc L.
 Habig, Jeremy
 Kanehl, Oliver
 Kapinos, Matthias
 Nichols, Deborah
 Peters, Maria
 Pos, Hans
 Schram, Dave
(11 rows)
```

d) 

```sql
SELECT year, COUNT(*) AS film_count
FROM movie
GROUP BY year
HAVING year = (
    SELECT MAX(year)
    FROM movie
)
UNION ALL
SELECT year, COUNT(*) AS film_count
FROM movie
GROUP BY year
HAVING COUNT(*) = (
    SELECT MAX(movie_count)
    FROM (
        SELECT year, COUNT(*) AS movie_count
        FROM movie
        GROUP BY year
    ) AS movie_counts
);

year | film_count
------+------------
 2008 |          1
 1997 |         36
(2 rows)
```

##### Aufgabe 3

a)

Gibt alle Einnahmen von Europäischen Ländern welche im Inland getätigt wurden aus dem Jahr 1992 aus. Sortiere Absteigend nach den Einnahmen.

b) 

Gib alle die Umsätze der Lander Deutschland und Frankreich aus gegenseitigen Bestellungen für die Jahre 1995 und 1996 an. Das Ergebnis wird schließlich nach Lieferanten-Nation, Kunden-Nation und Jahr sortiert.



##### Aufgabe 4

a)

```sql
SELECT
  n_name AS country,
  EXTRACT(YEAR FROM o_orderdate) AS year,
  sum((l_extendedprice * (1 - l_discount)) - (ps_supplycost * l_quantity)) AS total_profit
  FROM nation, lineitem, part, partsupp, supplier, orders
  WHERE s_suppkey = ps_suppkey
  AND ps_partkey = p_partkey
  AND l_partkey = p_partkey
  AND ps_partkey = l_partkey
  AND l_suppkey = ps_suppkey
  AND l_orderkey = o_orderkey 
  AND n_nationkey = s_nationkey
  AND p_name LIKE '%chocolate%'
  GROUP BY n_name,  year
  ORDER BY n_name ASC, year DESC;
  

           country          | year | total_profit
---------------------------+------+---------------
 ALGERIA                   | 1998 | 28755250.6829
 ALGERIA                   | 1997 | 51619211.9021
 ALGERIA                   | 1996 | 50971117.0264
 ALGERIA                   | 1995 | 50178326.0903
 ALGERIA                   | 1994 | 50354843.0773
 ALGERIA                   | 1993 | 49820603.5342
 ALGERIA                   | 1992 | 51302886.2303
 ARGENTINA                 | 1998 | 28255173.9688
 ARGENTINA                 | 1997 | 49685501.9374
 ARGENTINA                 | 1996 | 46926858.5712
 ARGENTINA                 | 1995 | 46851125.2080
 ARGENTINA                 | 1994 | 49234395.2757
 ARGENTINA                 | 1993 | 48193924.4684
 ARGENTINA                 | 1992 | 46772926.3839
```

b)

```sql
SELECT p_partkey AS key, 
p_name AS name,
SUM(ps_availqty) AS totalqty
FROM part, partsupp, supplier, nation
WHERE n_name = 'GERMANY'
AND s_nationkey = n_nationkey
AND s_suppkey = ps_suppkey
AND ps_partkey = p_partkey
GROUP BY p_partkey, p_name
HAVING SUM(ps_availqty) > 0.0001 * (
    SELECT SUM(ps_availqty)
    FROM partsupp, supplier, nation
    WHERE ps_suppkey = s_suppkey
      AND s_nationkey = n_nationkey
      AND n_name = 'GERMANY')
ORDER BY totalqty DESC;

 key   |                    name                    | totalqty
--------+--------------------------------------------+----------
  85606 | dodger khaki honeydew lawn mint            |    26531
  60932 | peru goldenrod ghost magenta white         |    25274
  80958 | tomato white tan drab thistle              |    22290
 139035 | salmon navajo cornflower grey maroon       |    21778
 164254 | spring ghost orchid saddle beige           |    21116
 193595 | cyan black dark coral violet               |    20916
  88450 | drab khaki floral black sienna             |    20847
 191287 | olive thistle beige lime midnight          |    19970
  31034 | white frosted lime powder beige            |    19864
 166726 | chiffon peach brown saddle rosy            |    19780
 176723 | burnished ivory moccasin dark slate        |    19548
  58102 | goldenrod wheat royal linen lime           |    19440
  34452 | antique tomato red sandy chocolate         |    19439


```



