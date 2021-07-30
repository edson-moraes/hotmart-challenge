create table "user"
(
    id   bigserial    not null primary key ,
    name varchar(100) not null
);

create table "category"
(
    id   bigserial    not null primary key ,
    name varchar(100) not null
);

insert into category(name) values ('BUSINESS');
insert into category(name) values ('ENTERTAINMENT');
insert into category(name) values ('GENERAL');
insert into category(name) values ('HEALTH');
insert into category(name) values ('SCIENCE');
insert into category(name) values ('SPORTS');
insert into category(name) values ('TECHNOLOGY');

create table "product"
(
    id          bigserial      not null primary key ,
    name        varchar(100)   not null,
    description varchar(300)   not null,
    category    bigint         not null references "category" (id),
    price       decimal(11, 2) not null,
    created_at  timestamp      not null
);

create table "sale"
(
    id        bigserial primary key,
    seller_id bigint    not null references "user" (id),
    buyer_id  bigint    not null references "user" (id)
);