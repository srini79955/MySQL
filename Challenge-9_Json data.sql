use sakila;

create table product(product_id int primary key,
						product_name varchar(50),
                        preventive_maintenance json,
                        repair_schedule json);
                        
desc product;


insert into product values
(101, 'Honda amaze', '{"Part":"Motor", "EngineerName":"Astha", "MaintenanceDate":"1989-02-16"}', '{"RepairDate":"1992-10-14","Expenditure":9000}'),
(102, 'Honda city', '{"Part":"Stering", "EngineerName":"Mayank", "MaintenanceDate":"1985-04-16"}', '{"RepairDate":"1989-01-14","Expenditure":19000}'),
(103, 'Honda WR-V', '{"Part":"Seat", "EngineerName":"Neha", "MaintenanceDate":"1993-02-12"}', '{"RepairDate":"1994-01-14","Expenditure":10000}'),
(104, 'Honda jazz', '{"Part":"Motor", "EngineerName":"Ashta", "MaintenanceDate":"1997-02-10"}', '{"RepairDate":"1996-01-12","Expenditure":5000}'),
(105, 'Honda BR-v', '{"Part":"Clutch plate", "EngineerName":"Sameer", "MaintenanceDate":"2020-02-10"}', '{"RepairDate":"2020-01-03","Expenditure":45000}');

select * from product;

select product_id, 
product_name, 
preventive_maintenance->>'$.Part' Part, 
preventive_maintenance->>'$.MaintenanceDate'  maintanance,
repair_schedule->>'$.Expenditure' Expenditure
 from product;
 
 
select product_id, 
product_name, 
preventive_maintenance->>'$.EngineerName' Engineer, 
preventive_maintenance->>'$.MaintenanceDate'  maintanance_Date from product;


select product_id,
		product_name,
        preventive_maintenance->>'$.Part' Part,
        preventive_maintenance->>'$.EngineerName' Engineer,
        preventive_maintenance->>'$.MaintenanceDate'  maintananceDate,
        repair_schedule->>'$.RepairDate' Repair_Date,
        repair_schedule->>'$.Expenditure' Expenditure
 from product;
 
                        