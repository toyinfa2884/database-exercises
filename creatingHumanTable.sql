create table Human(
`humanId` int(10) 	NOT null,
`name` varchar(30) Not NULL,
`age` int(3) Not NULL,
`gender` varchar(1) Not NULL,
bloodType varchar(3) Not NULL,
genotype varchar(3) Not NULL,
constraint human_PK primary key(humanId)
);

create table Games(
`gameId` int(3) Not NULL,
`Gamename` varchar(30) Not NULL,
`price` numeric(4.2) Not NULL,
`quantity` int(3) Not NULL,
`location` varchar(25) Not NULL,
constraint Games_PK primary key(gameId)

);

create table GamePurchase(
humanId int(10) Not NULL,
`gameId` int(3) Not NULL,
`order` timestamp Not NULL DEFAULT CURRENT_TIMESTAMP,
constraint Order_PK primary key(humanId, gameId),
constraint human_fk foreign key(humanId)
                   references HUMAN(humanId),
constraint games_fk foreign key(gamesId)
                    references Games(gameId)
);
