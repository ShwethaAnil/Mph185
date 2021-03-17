 insert into airlines values('AL333','Air pacific');
insert into airport values('AP111','BAN','India','Bangalore','AL333');
insert into flight values('F101',20,'Business',3000,'AL333');
insert into flight values('F102',30,'Economy',4000,'AL333');

insert into schedule values('S121', TO_DATE('2021-01-28', 'YYYY-MM-DD'), TO_DATE('2021-01-28', 'YYYY-MM-DD'),  TO_DATE('09:06:05', ' HH24:MI:SS'),  TO_DATE('18:02:11', ' HH24:MI:SS'), 'F101');
INSERT INTO schedule VALUES ('S213', TO_DATE('2021-02-08', 'YYYY-MM-DD'), TO_DATE('2021-02-09', 'YYYY-MM-DD'),  TO_DATE('07:06:15', ' HH24:MI:SS'),  TO_DATE('12:02:14', ' HH24:MI:SS'), 'F102');
INSERT INTO schedule VALUES ('S196', TO_DATE('2021-02-26', 'YYYY-MM-DD'), TO_DATE('2021-02-27', 'YYYY-MM-DD'), TO_DATE('15:02:13', ' HH24:MI:SS'),  TO_DATE('17:02:13', ' HH24:MI:SS'), 'F101');
INSERT INTO schedule VALUES ('S197', TO_DATE('2021-02-26', 'YYYY-MM-DD'), TO_DATE('2021-02-27', 'YYYY-MM-DD'), TO_DATE('15:03:13', ' HH24:MI:SS'),  TO_DATE('17:03:13', ' HH24:MI:SS'), 'F102');

 insert into route values('R123','Mumbai',' Delhi','S121');
     insert into route values('R212','Banglore','Mumbai','S213');
      insert into route values('R312','Chennai','Chandigarh','S196');
      insert into route values('R311','Chennai','Chandigarh','S197');
       insert into route values('R342','Chennai','Chandigarh','S121');
