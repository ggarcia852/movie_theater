CREATE TABLE "movie" (
  "movie_id" SERIAL,
  "movie_name" VARCHAR(100),
  "movie_length(minutes)" INTEGER,
  "movie_rating" VARCHAR(5),
  "release_date" DATE,
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "zip_code" INTEGER,
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "ticket" (
  "ticket_id" SERIAL,
  "customer__id" INTEGER,
  "ticket_price" NUMERIC(4,2),
  "movie_id" VARCHAR(100),
  "show_date" DATE,
  "show_time" TIME(0),
  "theater_number" INTEGER,
  "seat_number" INTEGER,
  PRIMARY KEY ("ticket_id"),
  CONSTRAINT "FK_ticket.customer__id"
    FOREIGN KEY ("customer__id")
      REFERENCES "customer"("customer_id")
);

CREATE TABLE "concession_item" (
  "item_id" SERIAL,
  "item_name" VARCHAR(50),
  "item_price" NUMERIC(4,2),
  "inventory" INTEGER,
  PRIMARY KEY ("item_id")
);

CREATE TABLE "concession_order" (
  "concession_id" SERIAL,
  "item_id" INTEGER,
  "item_quantity" INTEGER,
  "ticket_id" INTEGER,
  "order_date" DATE,
  "total_price" NUMERIC(6,2),
  PRIMARY KEY ("concession_id"),
  CONSTRAINT "FK_concession_order.ticket_id"
    FOREIGN KEY ("ticket_id")
      REFERENCES "ticket"("ticket_id"),
  CONSTRAINT "FK_concession_order.item_id"
    FOREIGN KEY ("item_id")
      REFERENCES "concession_item"("item_id")
);

ALTER TABLE ticket    -----cannot execute FK 
ADD FOREIGN KEY(movie_id) REFERENCES movie(movie_id); 