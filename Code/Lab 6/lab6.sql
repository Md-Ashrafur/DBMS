 create view agentview1 as
    select agent_code, agent_name, working_area
    from agents
   where working_area like 'Bangalore';

select *from agentview1;

drop view agentview1;

create view agentview1 as
      select agent_code, agent_name, working_area
      from agents
      where working_area = 'Bangalore';


select *from agentview1;


//answer 2:

Create view myclient as
  select cust_name as Client_name, cust_code as client_no, (outstanding_amt*100/(opening_amt+receive_amt)) as outspercent
from customers
where cust_country = 'USA' and (outstanding_amt*100/(opening_amt+receive_amt))> 60;


//answe 3:


create view agentview2 as 
select agent_code, agent_name, working_area, commission, phone_no, country
from agents
where working_area='Bangalore' and commission>0.1;


//answer 5
create view custview3 as
select cust_code, cust_name, cust_city, working_area, cust_country, grade, opening_amt, receive_amt, payment_amt, outstanding_amt, phone_no, agent_code
from customer
where cust_name not like 'M%';


//answer 6

create view agentview4 as
select agent_name, working_area, commission
from agents
order by agent_name desc, commission desc;

select *from agentview4;


//answer 7
create view agentview5 as 
select agent_code, agent_name, working_area, commission, phone_no, country
from agents
where agent_code='A006' or agent_code='A009' or agent_code='A004' or agent_code='A001';


//answer 10
create view top_customer as
select cust_code, cust_name, cust_city, working_area, cust_country, grade, opening_amt, receive_amt, payment_amt, outstanding_amt, phone_no, agent_code
from customer
where opening_amt>5000 and receive_amt>5000 and payment_amt>5000 and outstanding_amt>5000;