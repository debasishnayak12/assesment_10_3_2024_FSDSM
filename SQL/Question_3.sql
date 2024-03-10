question ---( Write a query to to get the list of users who took the a 
--training lesson more than once in the same day, grouped by user and training 
--lesson, each ordered from the most recent lesson date to oldest date.)

for this the query is 
[select u.user_name,td.training_id from users u join training_details td 
on u.user_id = td.user_id
group by u.user_id,u.user_name,td.training_id,td.training_date
having count(*) > 1
order by td.training_date desc]