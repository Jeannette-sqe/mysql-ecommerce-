use xecommerce;
-- usando a função select
select * 
from clients;
-- contando o Total de clientes
select count(*) as Total_clientes
from clients;
-- usando o filtro Where para verificar os pedidos dos clientes
select *
from clients c, orders o
where c.idClient = idOrderClient;
--
select concat(Fname,' ',Lname) as Cliente,
idOrder as Requirimento,
orderStatus as Status
from clients c, orders o 
where c.idClient = idOrderClient;
-- agrupar Group By
select *
from clients c, orders o 
where c.idClient = idOrderClient
group by idOrder;
-- junção
select *
from clients
left outer join orders on idClient = idOrderClient;
-- 
select * from clients c inner join orders o on c.idClient = o.idOrderClient
			inner join productOrder p on p.idPOorder = o.idOrder;
-- 
