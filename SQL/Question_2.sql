for fetching the values in table test_a which are not in table test_b not using not in 
then the alternative version of query is --

[selct a.* from test_a a
left join test_b b 
on a.value = b.value
where b.value is null]