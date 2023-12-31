--select top 10 * from CustomerDb..Customers
select top 100  * from INTERFACE.REB.RETAIL_LOAN WITH(NOLOCK)

select top 100 * from INTERFACE.REB.RETAIL_LOAN_DETAIL WITH(NOLOCK)

select top 100 CREDIT_ACCOUNT_NUMBER, COUNT(*) from INTERFACE.REB.RETAIL_LOAN_DETAIL WITH(NOLOCK)
GROUP BY CREDIT_ACCOUNT_NUMBER

SELECT  CREDIT_ACCOUNT_NUMBER   from INTERFACE.REB.RETAIL_LOAN


SELECT top 100 PAID_CODE, CREDIT_ACCOUNT_SHORT_NAME, AMOUNT, PROJECT_CODE,REST_PRINCIPAL_AMOUNT FROM  //deneme
INTERFACE.REB.RETAIL_LOAN s1 WITH(NOLOCK) INNER JOIN INTERFACE.REB.RETAIL_LOAN_DETAIL s2 WITH(NOLOCK)
on 
s1.CREDIT_ACCOUNT_NUMBER=s2.CREDIT_ACCOUNT_NUMBER
