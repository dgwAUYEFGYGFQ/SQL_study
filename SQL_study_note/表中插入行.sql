insert into orders (customer_id , order_date , status, comments)
value ( 11 , '2024-06-02' , 1 , 'i\'m a hungery animal!') ,
      ( 12 , '2024-06-02' , 1 , 'I\'M A FOOD.:)');
insert into order_items ( order_id, product_id , quantity ,  unit_price )
value ( last_insert_id() , 13 , 10 , 20 )