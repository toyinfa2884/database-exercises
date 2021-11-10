create table Human(
`humanId` int(10) Not Null,
`name` varChar(30) Not Null,
`age` int(3) Not Null,
`gender` varChar(1) Not Null,
bloodType varChar(3) Not Null,
GenoType varChar(3) Not Null,
constraint human_PK Primary Key(humanId)
);

create table Games(
`gameId` int(3) Not Null,
`Gamename` varChar(30) Not Null,
`Price` numeric(4,2) Not Null,
`quantity` int(3) Not Null,
location varChar(25) Not Null,
constraint Games_PK Primary key(gameId)
);

create table GamePurchase(
humanId int(10) Not Null,
`gameId` int(3) Not Null,
-- Surrogate column --
`orderDate` timestamp Not Null DEFAULT CURRENT_TIMESTAMP,
constraint Order_PK Primary Key(humanId, gameId),
constraint human_fk foreign key(humanId)
					references Human(humanId),
                    -- ON UPDATE CASCADE ON DELETE RESTRICT
constraint games_fk foreign Key(gameId)
					references Games(gameId)
-- gamepurchasehumanENGINE = INNODB;b --
);