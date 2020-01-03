









select customer.customer_name, customer_street,customer_city
from depositor, account, customer, branch
where customer.customer_name=depositor.customer_name and 
depositor.account_number=account.account_number and 
account.branch_name=branch.branch_name and branch_city=customer_city;


select 	customer.customer_name, customer_street,customer_city
from borrower,loan,branch,customer
where customer.customer_name=borrower.customer_name and
borrower.loan_number=loan.loan_number and
loan.branch_name=branch.branch_name and branch_city=customer_city;


select avg(balance)
from account,branch
where account.branch_name=branch.branch_name
group by branch_city
having sum(balance)>1000;	


select avg(amount)
from loan,branch
where loan.branch_name=branch.branch_name
group by branch_city
having avg(amount)>1500;

select customer.customer_name,customer_street,customer_city
from depositor,account as b, account as l,customer
where depositor.customer_name=customer.customer_name and 
b.balance>l.balance and depositor.account_number=b.account_number;  

select customer.customer_name,customer_street,customer_city
from depositor,account as b, account as l,customer
where depositor.customer_name=customer.customer_name and 
b.balance<l.balance and depositor.account_number=b.account_number;  

with total_balance(branch_name, value)as (select branch_name, sum(amount)
                                            from account
											group by branch_name),
total_balance_avg(value)as (select avg(value)
                            from total_balance)
select branch_name
from total_balance, total_balance_avg
where total_balance.value>total_balance_avg.value;

with total_balance(branch_name, value)as (select branch_name, sum(amount)
                                            from account
											group by branch_name),
total_balance_avg(value)as (select avg(value)
                            from total_balance)
select branch_name
from total_balance, total_balance_avg
where total_balance.value<total_balance_avg.value;
							

