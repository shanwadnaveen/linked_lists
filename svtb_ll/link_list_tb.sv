module top;
  initial begin
  node_class head;
   head = new();
   head.la = 0;
   head.print_list();
   head.insert_node(10);
   head.print_list();
   head.insert_node(20);
   head.print_list();
   head.next.insert_node(30);
   head.print_list();
   head.insert_node_end(40);
   head.print_list();
 
   head.insert_node_index(1, 50); 
   head.print_list();
end
