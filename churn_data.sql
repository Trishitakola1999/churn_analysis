select *
from churn_data;

select Gender, count(gender) as Gender_count, count(gender) * 100/(select count(*) from churn_data) as Percentage
from churn_data
group by gender;

select Contract, count(contract) as Contract_count, count(contract) * 100/ (Select count(*) from churn_data) as Contract_Percentage
from churn_data
group by contract;

Select Customer_status, count(customer_status) as Customer_status_count, count(customer_status) * 100/ (Select count(*) from churn_data) as Customer_status_Percentage
from churn_data
group by Customer_Status;

select state, count(state) as State_count, count(state) * 100/(select count(*) from churn_data) as State_Percentage
from churn_data
group by state
order by State_Percentage desc;

Select *
from churn_data;

Select distinct Internet_Type
from churn_data;

-- count of null values
select 
sum(case when Customer_ID is NULL then 1 else 0 end) customer_ID_null_count,
sum(case when Gender is null then 1 else 0 end) gender_null_count,
sum(case when age is null then 1 else 0 end) age_null_count,
sum(case when married is null then 1 else 0 end) married_null_count,
sum(case when state is null then 1 else 0 end) state_null_count,
sum(case when Number_of_Referrals is null then 1 else 0 end) number_of_referrals_null_count,
sum(case when Tenure_in_Months is null then 1 else 0 end) tenure_in_months_null_count,
sum(case when Value_Deal is null then 1 else 0 end) value_deal_null_count,
sum(case when phone_service is null then 1 else 0 end) phone_service_null_count,
sum(case when Multiple_Lines is null then 1 else 0 end) multiple_lines_null_count,
sum(case when Internet_Service is null then 1 else 0 end) internet_service_null_count,
sum(case when Internet_Type is null then 1 else 0 end) internet_type_null_count,
sum(case when Online_Security is null then 1 else 0 end) online_security_null_count,
sum(case when Online_Backup is null then 1 else 0 end) online_backup_null_count,
sum(case when Device_Protection_Plan is null then 1 else 0 end) device_protection_plan_null_count,
sum(case when Premium_Support is null then 1 else 0 end) premium_support_null_count,
sum(case when Streaming_TV is null then 1 else 0 end) streaming_TV_null_count,
sum(case when Streaming_Movies is null then 1 else 0 end) streaming_movies_null_count,
sum(case when Unlimited_Data is null then 1 else 0 end) unlimited_data_null_count,
sum(case when contract is null then 1 else 0 end) contract_null_count,
sum(case when Paperless_Billing is null then 1 else 0 end) paperless_billing_null_count,
sum(case when Payment_Method is null then 1 else 0 end) payment_method_null_count,
sum(case when Monthly_Charge is null then 1 else 0 end) monthly_charge_null_count,
sum(case when Total_Charges is null then 1 else 0 end) total_charges_null_count,
sum(case when Total_Refunds is null then 1 else 0 end) total_refunds_null_count,
sum(case when Total_Extra_Data_Charges is null then 1 else 0 end) total_extra_data_charges_null_count,
sum(case when Total_Long_Distance_Charges is null then 1 else 0 end) total_long_distance_charges_null_count,
sum(case when Total_Revenue is null then 1 else 0 end) total_revenue_null_count,
sum(case when Customer_Status is null then 1 else 0 end) customer_status_null_count,
sum(case when churn_category is null then 1 else 0 end) churn_category_null_count,
sum(case when Churn_Reason is null then 1 else 0 end) churn_category_null_count
from churn_data;


Select 
ifnull(Customer_ID, 'None'),
ifnull(Gender, 'No'),
ifnull(Age, 'No'),
ifnull(Married, 'None'),
ifnull(State, 'No'),
ifnull(Number_of_Referrals, 'None'),
ifnull(Tenure_in_months, 'No'),
ifnull(Value_Deal, 'No'),
ifnull(Phone_Service, 'None'),
ifnull(Multiple_Lines, 'None'),
ifnull(Internet_Service, 'No'),
ifnull(Internet_Type, 'None'),
ifnull(Online_Security, 'None'),
ifnull(Online_Backup, 'No'),
ifnull(Device_Protection_Plan, 'None'),
ifnull(Premium_Support, 'No'),
ifnull(Streaming_TV, 'None'),
ifnull(Streaming_Movies, 'None'),
ifnull(Streaming_Music, 'None'),
ifnull(Unlimited_Data, 'No'),
ifnull(Contract, 'None'),
ifnull(Paperless_Billing, 'No'),
ifnull(Payment_Method, 'None'),
ifnull(Monthly_Charge, 'No'),
ifnull(Total_Charges, 'None'),
ifnull(Total_Refunds, 'No'),
ifnull(Total_Extra_Data_Charges, 'None'),
ifnull(Total_Long_Distance_Charges, 'No'),
ifnull(Total_Revenue, 'None'),
ifnull(Customer_Status, 'No'),
ifnull(Churn_Category, 'No'),
ifnull(Churn_reason, 'None')
from churn_data;

create view vw_ChurnData as
select * from churn_data where Customer_Status in ('Churned', 'Stayed');

create view vw_JoinData as
select * from churn_data where Customer_Status = 'Joined';