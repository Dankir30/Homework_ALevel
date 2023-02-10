Num 2

select 'This is '  || name || case when gender ='m' then ', he has email ' else ', she has email ' end || email as info from logins;
                     info
-----------------------------------------------
 This is Vasya, he has email mmm@mmail.com
 This is Alex, he has email mmm@gmail.com
 This is Alexey, he has email alexey@gmail.com
 This is Helen, she has email hell@gmail.com
 This is Jenny, she has email eachup@gmail.com
 This is Lora, she has email tpicks@gmail.com

 


Num 3
A)
select 'We have ' || count(gender) || ' boys!' as info from logins where gender='m'
union
select 'We have ' || count(gender) || ' girls!' as info from logins where gender='f';

       info
------------------
 We have 3 boys!
 We have 3 girls!


B)
select case when gender='m' then 'We have ' || count(gender) || ' boys!'
else 
'We have ' || count(gender) || ' girls!' end as info from logins group by gender;

       info
------------------
 We have 3 boys!
 We have 3 girls!



Num 5


select v.name, count(*) as Words from vocabulary as v inner join word as w on v.id=w.vocabulary_id
group by v.name order by v.name;

  name   | words
---------+-------
 animals |    10
 human   |    10
 nature  |    10
 school  |    10
 SF      |    10




