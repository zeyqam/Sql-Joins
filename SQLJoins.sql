select SUBSTRING([Email],1,CHARINDEX('@',[Email])-1)from Teachers
select SUBSTRING([Email],CHARINDEX('@',[Email])+1,Len([Email])-charindex('@',[Email])) from Teachers
select*from Students
truncate table Students

alter table Students
add SoftDeleted bit default 0;
insert into Students ([FullName],[Adress],[Age])
values('Reshad Agayev','Neftciler',21),
      ('Ilqar Shiriyev','Yasamal',26),
	  ('Behruz Eliyev','Kurdaxani',18)

	  select*from Students where [SoftDeleted]='true'

update Students
set[SoftDeleted]=1
where[Id]>2

create table Countries(
[Id] int primary key identity(1,1),
[Name] nvarchar (50)

)
create table Cities(
[Id] int primary key identity(1,1),
[Name] nvarchar (50),
[CountryId] int,
foreign key ([CountryId]) references Countries(Id)

)
select*from Cities
insert into Countries([Name])
values('Azerbaijan'),
('Turkey'),('Ingeltere')
select*from Countries
delete from Countries where [Id]=6

insert into Cities([Name],[CountryId])
values('Baki',1),
('Gence',1),('Zaqatala',1),('Istanbul',2),('Bursa',2),('London',3)

select*from Countries
select *from Cities

select*from Cities where CountryId=1


create table Books(
[Id] int primary key identity(1,1),
[Name] nvarchar (50)
)
create table Authors(
[Id] int primary key identity(1,1),
[Name] nvarchar (50),
[Email] nvarchar (100)
)
create table BookAuthors(
[Id] int primary key identity(1,1),
[BookId] int,
[AuthorId] int ,
foreign key ([BookId]) references Books(Id),
foreign key ([AuthorId]) references Authors(Id)



)

select *from Books
select * from Authors
select * from BookAuthors

insert into Books([Name])
values('Ali ve Nino'),
('Leyli Mecnun'),('Isgendername')

insert into Authors([Name],[Email])
values('Author1','author1@gmailcom'),
('Author2','author2@gmail.com'),('Author3','author3@gmail.com')

insert into BookAuthors([BookId],[AuthorId])
values (1,1),
(2,1),(3,2),(1,2)


select*from Countries
select *from Cities

select ct.name as City,ctr.name as Country from Cities ct
join Countries ctr
on ct.CountryId=ctr.Id


 select ct.name as City,ctr.name as Country from Cities ct
left join Countries ctr
on ct.CountryId=ctr.Id

select ct.name as City,ctr.name as Country from Cities ct
right join Countries ctr
on ct.CountryId=ctr.Id

select ct.name as City,ctr.name as Country from Cities ct
 full join Countries ctr
on ct.CountryId=ctr.Id


select a.Name as AuthorName,a.Email as AuthorEmail,b.name as BookName from Authors a
join BookAuthors ba
on a.Id=ba.AuthorId
join Books b
on b.Id=ba.BookId

