   create table airlines(
          airlineid varchar2(20) PRIMARY KEY,
          airlinename varchar2(30),
          CONSTRAINT airlineid check(airlineid like 'AL%')
          );
              insert into airlines values('AL333','Air pacific');
                    
                     create table airport(
airportid varchar2(20) PRIMARY KEY,
airportname varchar2(20) ,
country varchar2(20),
city varchar2(20),
airlineid varchar2(20),
CONSTRAINT airportid check (airportid like 'AP%'),
FOREIGN KEY(airlineid) REFERENCES airlines(airlineid) on delete set null
);

                           create table flight(flightid varchar2(20) PRIMARY KEY,
                      numofseats number(20),
                      typeofclass varchar2(20),
                      minfare number(20),
                      airlineid varchar2(15),
                      CONSTRAINT flightid check(flightid like 'F%'),
                      CONSTRAINT typeofclass check(typeofclass IN ('Business','Economy')),
                       FOREIGN KEY(airlineid) REFERENCES airlines(airlineid) on delete set null
                        );
                         
  

 create table schedule(
  scheduleid varchar2(20) PRIMARY KEY,
  deptdate date,
  arrdate date,
  depttime date,
  arrtime date,
  flightid varchar2(20),
   FOREIGN KEY(flightid) REFERENCES flight(flightid) on delete set null,
  CONSTRAINT scheduleid check(scheduleid like 'S%')
  );
   


 create table route
     (routeid varchar2(20) PRIMARY KEY,
     source varchar2(30),
     destination varchar2(30),
     scheduleid varchar2(20),
      CONSTRAINT routeid check(routeid like 'R%'),
       FOREIGN KEY(scheduleid) REFERENCES schedule(scheduleid)on delete set null);
    
       
       
  create table user_information(
  user_id varchar2(10) PRIMARY KEY,
  username varchar(20),
  email varchar2(40),
  dob date,
  phn_no number(20),
  address varchar2(80),
  password varchar2(40) NOT NULL,
  user_type varchar2(30),
  CONSTRAINT user_id check(user_id like 'U%'),
  CONSTRAINT user_type check(user_type IN ('admin','user'))
  );

create table passengerdetails(
                        passengerid varchar2(20) primary key,
                        passengername varchar2(30),
                         age number(10),
                         gender varchar2(30),
                         passportnumber varchar2(30),
                         user_id varchar2(30),
                         CONSTRAINT pid check(passengerid like 'P%'),
                         CONSTRAINT pgender check(gender IN ('Male','Female','Others')),
                         FOREIGN KEY(user_id) REFERENCES user_information(user_id) on delete set null
                         ); 
						 
						 create table ticket(
                     ticketid varchar2(30) primary key,
                     status varchar2(20),
                     seatno number,
                     passengerid varchar2(20),
                     flightid varchar2(20),
                     cost number,
                     CONSTRAINT ticketid check(ticketid like 'T%'),
                     CONSTRAINT status check(status IN ('Booked','Cancelled')),
                     FOREIGN KEY(passengerid) REFERENCES passengerdetails(passengerid) on delete set null,
                     FOREIGN KEY(flightid) REFERENCES flight(flightid) on delete set null
                     );
                     
                  