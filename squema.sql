create database go_inventario;
use go_inventario;

create table USERS(
    id int not null auto_incremet,
    emmail varchar(255) not null,
    password varchar(255) not null,
    primary key (id)
);

create table PRODUCTS(
    id int not null auto_incremet,
    name varchar(255) not null,
    description varchar(255) not null,
    price float not null,
    created_by int not null,
    primary key (id),
    foreign key (created_by) references USERS(id)
);

create table ROLES(
     id int not null auto_incremet,
     name varchar(255) not null,
     primary key(id)
);

create table USER_ROLES(
    id int not null auto_incremet,
    user_id int not null,
    role_id int not null,
    primary key(id),
    foreign key (user_id) references USERS(id),
    foreign key (role_id) references ROLES(id)
);
