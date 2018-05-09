SELECT * FROM 0106012580_verkefni5.countrylanguage;

#1
select CountryCode, Language
FROM 0106012580_verkefni5.countrylanguage
where CountryCode = 'ARG';

#2
select CountryCode, Language, IsOfficial
FROM 0106012580_verkefni5.countrylanguage
where CountryCode = 'ARG' and IsOfficial = 'T';

#3
select CountryCode, Language, IsOfficial
FROM 0106012580_verkefni5.countrylanguage
where CountryCode = 'ARG' and IsOfficial = 'F';

#4-5
select CountryCode, Language, Percentage
FROM 0106012580_verkefni5.countrylanguage
where IsOfficial = 'f' and Percentage < 50
group by CountryCode;

#6
select CountryCode, Language, IsOfficial, Percentage
FROM 0106012580_verkefni5.countrylanguage
where Percentage >= 90;

#7
select CountryCode, Language, IsOfficial, Percentage
FROM 0106012580_verkefni5.countrylanguage
where Percentage <= 5;

#8
select CountryCode, Language, IsOfficial
FROM 0106012580_verkefni5.countrylanguage
where Language = 'English' and IsOfficial = 'T';

#9
select Language, count(CountryCode) as 'Fjöldi'
FROM 0106012580_verkefni5.countrylanguage
group by Language;

#10
select Language, count(CountryCode) as 'Fjöldi'
FROM 0106012580_verkefni5.countrylanguage
group by Language
having count(CountryCode) >= 5;