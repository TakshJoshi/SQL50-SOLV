# Write your MySQL query statement below
Select  Prices.product_id, ifnull(round(sum(units * price)/sum(units),2),0) 
  as average_price  
  from Prices 
  left join UnitsSold 
  on UnitsSold.purchase_date >= Prices.start_date and UnitsSold.purchase_date <= Prices.end_date and Prices.product_id = UnitsSold.product_id 
  group by Prices.product_id;
