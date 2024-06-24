create table smartphones 
(
	no_id serial primary key,
	brand_name varchar(50),
	model varchar(50),
	price int,
	rating float,
	has_5G boolean,
	has_nfc boolean
)

COPY smartphones (brand_name,model,price,rating,has_5G,has_nfc)
FROM 'C:\Users\shles\OneDrive\Desktop\Class -ARC\SQL Data\smartphones_cleaned_v6.csv'
DELIMITER ','
CSV HEADER;

select * from smartphones

select brand_name from smartphones

select distinct brand_name from smartphones

select * from smartphones where price>50000

select model from smartphones where model = 'OnePlus 11 5G'

select model from smartphones where model = 'Motorola Moto G62 5G"' OR  model ='Apple iPhone 14'

select * from smartphones where price > 50000 AND  rating < 70

select * from smartphones where price > 30000 AND  rating > 70

select * from smartphones where has_5g = 'false' AND  has_nfc ='false'

select * from smartphones where has_5g = 'True' OR  has_nfc ='false'

select distinct price from smartphones

select brand_name,price from smartphones where brand_name = 'motorola' AND  price > 10000

select brand_name,price from smartphones where brand_name = 'apple' AND  price > 80000
