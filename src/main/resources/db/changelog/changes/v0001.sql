create table "user"
(
    id   bigserial    not null,
    name varchar(100) not null,
    primary key (id)
);

create table "category"
(
    id   bigserial    not null,
    name varchar(100) not null,
    primary key (id)
);

insert into category values ('BUSINESS');
insert into category values ('ENTERTAINMENT');
insert into category values ('GENERAL');
insert into category values ('HEALTH');
insert into category values ('SCIENCE');
insert into category values ('SPORTS');
insert into category values ('TECHNOLOGY');

create table "product"
(
    id          bigserial      not null,
    name        varchar(100)   not null,
    description varchar(300)   not null,
    category    bigint         not null references "category" (id),
    price       decimal(11, 2) not null,
    created_at  timestamp      not null,
    primary key (id)
);

create table "sale"
(
    id        bigserial not null,
    seller_id bigint    not null references "user" (id),
    buyer_id  bigint    not null references "user" (id),
    primary key (id)
);