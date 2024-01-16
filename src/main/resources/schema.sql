DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS service_provider;
DROP TABLE IF EXISTS services;
DROP TABLE IF EXISTS barbers;

create table barbers
(
    id           serial not null,
    email        varchar(255),
    name         varchar(255),
    phone_number varchar(255),
    primary key (id)
);
create table bookings
(
    id           bigserial not null,
    booking_date date,
    comments     varchar(255),
    end_time     time,
    start_time   time,
    barber_id    integer,
    customer_id  bigint,
    service_id   integer,
    primary key (id)
);
create table customers
(
    id           bigserial not null,
    email        varchar(255),
    name         varchar(255),
    phone_number varchar(255),
    primary key (id)
);
create table service_provider
(
    service_id integer not null,
    barber_id  integer not null
);
create table services
(
    id          serial not null,
    description varchar(255),
    duration    integer,
    name        varchar(255),
    price       integer,
    primary key (id)
);
alter table if exists bookings
    add constraint FK6osayelf1dyyrh6p0y0sm0ii2 foreign key (barber_id) references barbers;
alter table if exists bookings
    add constraint FKbvfibgflhsb0g2hnjauiv5khs foreign key (customer_id) references customers;
alter table if exists bookings
    add constraint FKjcwbou2jlblfwu14uoxs65b25 foreign key (service_id) references services;
alter table if exists service_provider
    add constraint FKn8ywx2qjbmmvi2tu4skkad0wq foreign key (barber_id) references barbers;
alter table if exists service_provider
    add constraint FKixo2nhgr5wetrmaojxu0l2pjt foreign key (service_id) references services;

