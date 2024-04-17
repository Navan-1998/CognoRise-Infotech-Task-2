Select * from cereal;

#1.What is the average rating(Round it to two decimal places) of all cereals?
Select round(Avg(rating),2) from cereal;

#2.How many cereals are in each type?
Select type,count(name) as Number_of_Cereals from cereal group by type;

#3.Which manufacturer produces the cereal with the highest rating?
Select mfr,rating from cereal where rating=
	(Select Max(rating) from cereal);
    
#4.What is the average calorie content of all cereals?
Select Avg(calories) from cereal;

#5.List the top 10 cereals with the highest protein content.
Select cereal.name,protein from cereal order by protein DESC limit 10;

#6.Which cereal has the lowest fat content?
Select name,fat from cereal where fat=
	(Select Min(fat) from cereal);
    
#7.How many cereals have a sodium content above 200 mg?
Select count(name) as Count_of_cereals from cereal where sodium>200;

#8.Calculate the average fiber content of all cereals.
Select Avg(fiber) from cereal;

#9.List the cereals with less than 5 grams of carbohydrates.
Select name from cereal where carbo<5;

#10.Which cereal has the highest sugar content per serving?
Select name from cereal where (sugars/cups) in
	(Select Max(sugars/cups) from cereal);
    
#11.Identify the cereal with the most potassium content.
Select name from cereal where potass=
	(Select Max(Potass) from cereal);
    
#12.Calculate the average vitamin content of all cereals.
Select Avg(vitamins) from cereal;

#13.How many cereals are on each shelf?
Select Shelf,Count(name) As Number_of_Cereals from cereal group by shelf;

#14.What is the total weight of all cereals?
Select SUM(weight) from cereal;

#15.List the cereals with the highest number of cups per serving.
Select name,(cups/weight) from cereal where (cups/weight)=
	(Select Max(cups/weight) from cereal);
    
#16.Find the cereals with a rating above 4.
Select name from cereal where rating>4;

#17.Calculate the average protein content of cereals manufactured by each company.
Select mfr,avg(protein) as avg_protein_by_Manufacturer from cereal group by mfr;

#18.Identify the cereals with a fiber content above 5 grams.
Select name,fiber from cereal where fiber>5;

#19.List the cereals with less than 10 grams of sugars.
Select name,sugars from cereal where sugars<10; 

#20.How many cereals have a potassium content above 200 mg?
Select Count(*) from cereal where potass>200;

#21.Calculate the average fat content of cereals with a rating above 4.
Select avg(fat) from cereal where rating>4;

#22.Identify the cereals with a sodium content below 100 mg.
Select name,sodium from cereal where sodium<100;

#23.List the cereals with a carbohydrate content below 20 grams
Select name,carbo from cereal where carbo<20;

#24.How many cereals have a vitamin content above 25%?
Select Count(name) from cereal where vitamins>25;

#25.Calculate the average weight of cereals with a rating above 4.
Select avg(weight) from cereal where rating>4;

#26.Identify the cereals with the highest shelf value.
Select name,shelf from cereal where shelf=
	(Select Max(shelf) from cereal);

#27.List the cereals with a sugar content below 5 grams
Select name,sugars from cereal where sugars<5;

#28.How many cereals have a potassium content above 300 mg?
Select Count(name) from cereal where potass>300;

#29.Calculate the average rating of cereals with a fat content below 2 grams.
Select avg(rating) from cereal where fat<2;

#30.Identify the cereals with a fiber content above 3 grams and a sodium content below 150 mg.
Select name,fiber,sodium from cereal Where fiber>3 and sodium<150;

#31.List the cereals with a protein content above 4 grams and a fat content below 3 grams.
Select name,protein,fat from cereal where protein>4 and fat<3;

#32.How many cereals have a rating above 3 and a vitamin content above 20%?
Select count(*) from cereal where rating>3 and vitamins>20;

#33.Calculate the average sugar content of cereals with a fat content above 5 grams.
Select avg(sugars) from cereal where fat>5;

#34.Identify the cereals with a fiber content above 2 grams and a sugar content below 8 grams.
Select name,fiber,sugars from cereal where fiber>2 and sugars<8;

#35.List the cereals with a sodium content above 250 mg and a potassium content above 200 mg.
Select name,sodium,potass from cereal where sodium>250 and potass<200; 

#36.How many cereals have a fat content above 4 grams and a sodium content below 200 mg?
Select Count(*) from cereal where fat>4 and sodium<200;

#37.Calculate the average rating of cereals with a protein content above 3 grams and a fiber content above 2 grams.
Select avg(rating) from cereal where protein>3 and fiber>2;

#38.Identify the cereals with a vitamin content above 15% and a sugar content below 10 grams.
Select name,vitamins,sugars from cereal where vitamins>15 and sugars<10;

#39.How many cereals have a protein content exceeding the average protein content across all cereals?
Select Count(*) from cereal where protein>
	(Select Avg(Protein) from cereal);
    
#40.Identify the cereals with the highest sugar content per weight
Select name,(sugars/weight) from cereal where (sugars/weight)=
	(Select Max(sugars/weight) from cereal);
    
#41.Identify the cereals with the highest sugar content per weight
Select name,(sugars/weight) from cereal where (sugars/weight)=
	(Select Min(sugars/weight) from cereal);
    
#42.Calculate the average sugar content of cereals for each shelf value and manufacturer combination- 
Select avg(Sugars),Shelf,mfr from cereal Group by shelf,mfr;

#43.identify the cereal with maximum vitamin content
Select name,Vitamins from cereal where vitamins=
	(Select Max(vitamins) from cereal);
    
#44.List the cereals with the highest ratio of potassium to calories for each shelf value and type combination.
SELECT name,shelf, type,max(potass / calories) AS max_potassium_to_calories_ratio
FROM Cereal
GROUP BY shelf, type,name;

#45.Calculate the average sodium content of cereals for each shelf value and manufacturer combination.
Select shelf,mfr,avg(sodium) from cereal group by shelf,mfr;

#46.List the cereals with the highest ratio of fiber to sodium for each shelf value.
Select shelf,(fiber/potass) from cereal where (fiber/potass)=
	(Select Max(fiber/potass) from cereal);

#47.Identify the cereals with a fat content above the 90th percentile.
Select name,fat from cereal where fat>.90;

#48.List of cereal with above average rating and above average fat content
Select name,rating,fat from cereal where rating>
	(Select Avg(rating) from cereal)
and
	fat<
	(Select Avg(fat) from cereal);
    
#49.Which manufacturer produces the cereal with the lowest rating on average?
Select mfr,name,rating from cereal where rating=
	(Select Min(rating) from cereal);
    
#.50What is the distribution of cereal types across different manufacturers?
Select mfr,type,count(*) As Count_of_Cereals from cereal group by mfr,type order by mfr,type;
