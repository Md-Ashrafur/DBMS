
/* 1 */

select customer.customer_name, customer_city, customer_street
from Customer, Depositor natural join Branch, Account
where customer.customer_name=Depositor.customer_name and branch.branch_city = Customer.customer_city
    and account.account_number=depositor.account_number and account.branch_name=Branch.branch_name;




select customer_name, customer_city, customer_street
from Customer
where customer_city in (select branch_city
                        from branch
						where branch_name in (select branch_name
						                      from Account
											  where Account_number in (select Account_number
											                           from Depositor natural join Customer)));
	/* 2 */																   
																	   
select 	customer.customer_name, customer_street,customer_city
from borrower,loan,branch,customer
where customer.customer_name=borrower.customer_name and
borrower.loan_number=loan.loan_number and
loan.branch_name=branch.branch_name and branch_city=customer_city;

/* 3 */

select branch_city, avg(balance)
from account natural join branch
group by branch_city
having sum(balance)>1000;

select branch_city, avg(balance)
from account natural join branch
Where sum(balance)>1000
group by branch_city;


/* 4 */

select avg(amount)
from loan,branch
where loan.branch_name=branch.branch_name
group by branch_city
having avg(amount)>1500;


select avg(amount)
from loan,branch
where loan.branch_name=branch.branch_name and avg(amount)>1500
group by branch_city;


/* 5 */
select customer.customer_name,customer_street,customer_city
from depositor,account as b, account as l,customer
where depositor.customer_name=customer.customer_name and b.balance>l.balance and depositor.account_number=b.account_number;  


/* 6 */
select customer.customer_name,customer_street,customer_city
from depositor,account as b, account as l,customer
where depositor.customer_name=customer.customer_name and 
b.balance<l.balance and depositor.account_number=b.account_number; 











