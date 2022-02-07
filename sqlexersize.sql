/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */

SELECT * FROM products
join categories on products.CategoryID = categories.CategoryID where products.CategoryID = 1;
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select products.Name, products.Price, reviews.Rating
 from products inner join reviews on products.ProductID = reviews.ProductID where reviews.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select employees.FirstName , employees.LastName, sum(sales.Quantity) from employees
 inner join sales on employees.EmployeeID = sales.EmployeeID  
 group by employees.EmployeeID
 order by SUM(Quantity) desc;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select D.NAME ,C.NAME FROM departments AS D 
JOIN categories AS C
 ON C.DepartmentID = D.DepartmentID
 WHERE C.Name = "Appliances" or C.Name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.name, s.Quantity , sum(priceperunit * Quantity) from products as p
join sales as s on p.ProductID = s.ProductID
where p.name = "Eagles: Hotel California";


/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.name , r.Reviewer, r.rating, r.comment from products as p
join reviews as r on p.ProductID = r.ProductID 
where p.name = "visio tv" and r.Rating < 3;


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
