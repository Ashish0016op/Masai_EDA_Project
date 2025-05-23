create database sal_bw_project_2;
use sal_bw_project_2;

create table Quotes(
	author varchar(25),
    quote text,
    tag_name json
);

-- 1.Find the number of quotes by each author.

select
	author,
	count(*) as number_of_quotes
from Quotes
group by author;


-- 2.List the top 5 most common tags.

select
	tag_name,
    count(*) as tag_count
from Quotes
group by tag_name
order by tag_count desc
limit 5;

-- 3.Find authors who have more than 5 quotes.

select
	author,
    count(quote) as total_quote
from Quotes
group by author
having total_quote>5;

-- 4.Retrieve the longest quote and its author.

select
	author,
    quote
from Quotes
order by length(quote) desc
limit 1;











