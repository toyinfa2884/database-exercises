create database movie;

create table actor(
`act_id` int(10)  Not Null,
`act_fname` char(20) Not Null,
`act_lname` char(20) Not Null,
`act_gender` char(10) Not Null,
constraint actor_Pk primary key(act_id)
);

create table director(
`dir_id` int(10) Not NULL,
`dir_fname` char(20) Not NULL,
`dir_lname` char(20) Not NULL,
constraint dir_id_PK primary key(dir_id)
);

create table movie_director(
`dir_id` int(10) Not NULL,
`mov_id` int(10) Not NULL,
constraint caster_pk primary key(dir_id, mov_id),
constraint director_fk foreign key(dir_id)
						references director(dir_id),
constraint movie_fk foreign Key(mov_id)
					references movie(mov_id)
);


create table movie_cast(
`act_id` int(10) Not NULL,
`mov_id` int(10) Not NULL,
`role` char(30) Not NULL,
constraint role_PK Primary Key(act_id, mov_id),
constraint actor_fk foreign key(act_id)
					references actor (act_id),
constraint movie_fk1 foreign Key(mov_id)
					references movie(mov_id)
);

create table movie(
`mov_id` int(10) Not NULL,
`mov_title` char(50) Not NULL,
`mov_year` int(10) Not NULL,
`mov_time` int(10) Not NULL,
`mov_lang` char(50) Not NULL,
`mov_dt_rel` date Not NULL,
`mov_rel_country` char(5),
constraint mov_id_PK primary key(mov_id)
);

create table reviewer(
rev_id int(10) Not NULL,
rev_name char(30) Not NULL,
constraint rev_id_PK primary key(rev_id)
);

create table genres(
`gen_id` int(10) Not NULL,
`gen_title` char(20) Not NULL,
constraint gen_id_PK primary key(gen_id)
);

create table movie_genres(
`mov_id` int(10) Not NULL,
`gen_id` int (10) Not NULL,
constraint cast_pk primary key(mov_id, gen_id),
constraint movie_fk2 foreign key(mov_id)
					references movie(mov_id),
constraint genres_fk foreign key(gen_id)
					references genres(gen_id)
);

create table rating(
`mov_id` int(10) Not NULL,
`rev_id` int(10) Not NULL,
`rev_stars` int(5) Not NULL,
`num_o_ratings` int(5) Not NULL,
constraint rev_pk primary key(mov_id, rev_id),
constraint movie_fk3 foreign key(mov_id)
					references movie(mov_id),
constraint reviewer_fk foreign key(rev_id)                  
                    references reviewer(rev_id)
);

