# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table restaurante (
  id                            varchar(255) not null,
  nome                          varchar(255),
  latitude                      varchar(255),
  longitude                     varchar(255),
  constraint pk_restaurante primary key (id)
);


# --- !Downs

drop table if exists restaurante;

