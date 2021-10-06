-----Insert into customer

INSERT INTO customer(
    first_name,
    last_name,
    zip_code
) VALUES (
    'Michael',
    'Garcia',
    '80204'
), (
    'Alex',
    'Decesaro',
    '80214'
);


-----Insert into movie

INSERT INTO movie(
    movie_name,
    movie_rating,
    release_date
) VALUES (
    'MovieA',
    'R',
    '2020-01-01'
), (
    'MovieB',
    'R',
    '2021-03-03'
);



-----Insert into concession order


INSERT INTO concession_order(
    item_quantity,
    order_date,
    total_price
) VALUES (
    '2',
    '2021-04-07',
    9.99
), (
    '1',
    '2021-03-03',
    3.99
);



-----Insert into ticket


INSERT INTO ticket(
    ticket_price,
    show_date,
    show_time,
    theater_number,
    seat_number
) VALUES (
    8.99,
    '2021-06-12',
    '11:30',
    '3',
    '58'
), (
     8.99,
    '2021-08-19',
    '12:45',
    '2',
    '34'
);



-----Insert into concession_items


INSERT INTO concession_item(
    item_name,
    item_price,
    inventory
) VALUES (
    'popcorn',
    4.99,
    '1000'
), (
   'candy',
    5.99,
    '1500'
);