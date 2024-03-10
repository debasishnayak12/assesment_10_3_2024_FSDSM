Select * from runners where id not in (select winner_id from races);

 this query will give nothig in output because there is a null value in Winner_id 
 
  if we use the query like -
[select rn.* from runners rn left join race rc 
on rn.ID=rc.Winner_id 
where rc.Winner_id is null;]

this query will fix the issue

