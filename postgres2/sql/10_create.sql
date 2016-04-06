create table device (
	id	bigint not null,
	name	varchar(100),
	price	numeric(8,2),
	primary key (id)
);

create sequence device_seq cache 10;