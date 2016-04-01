create table person (
	id	bigint not null,
	name	varchar(100),
	primary key (id)
);

create sequence person_seq cache 10;