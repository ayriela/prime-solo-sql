
How do you get all users from Chicago?
--select * from "accounts" where "city"='chicago'

How do you get all users with usernames that contain the letter a?
--select * from "accounts" where "username" ilike '%a%'

The bank is giving a new customer bonus! How do you update all records with an account balance of 0.00 and a transactions_attempted of 0? Give them a new account balance of 10.00.
--update "accounts" set "account_balance"=10.00 where "transactions_attempted"=0 and "account_balance"=0

How do you select all users that have attempted 9 or more transactions?
--select * from "accounts" where "transactions_attempted">9

How do you get the username and account balance of the 3 users with the highest balances, sorted highest to lowest balance? NOTE: Research LIMIT
--select "username", "account_balance" from "accounts" order by "account_balance" desc limit 3

How do you get the username and account balance of the 3 users with the lowest balances, sorted lowest to highest balance?
--select "username", "account_balance" from "accounts" order by "account_balance" asc limit 3

How do you get all users with account balances that are more than $100?
--select * from "accounts" where "account_balance">100

How do you add a new account?
--insert into "accounts" ("username","city","transactions_completed", "transactions_attempted", "account_balance") values('ayriel','st. paul','0','0','100.00')

The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: How do you delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
--delete from "accounts" where ("city"='miami' or "city"='phoenix') AND "transactions_completed"<5
