class node_class;
  int value;    
  static int node_count = 0;

  node_class next_node;

  virtual function void print_node();
     $write(value, "");
   endfunction : print_node


   virtual function void print_list();
     print_node();
     if(next != null)
       next.print_list();
     else
       $write("\n");
   endfunction : print_list

   virtual function void insert_node(int value);
     node_class node = new();
     node.value = value;
     node.next = next;
     next = node;
     node_count++;
   endfunction : print_list

   virtual function void insert_node_at_end(int value);
     node_class tmp;
     node_class node = new();
     node.value = value;

     tmp = next;

     if(tmp == null) begin
       node.next = next;
       next = node;
     end
     else begin
       while(tmp.next!= null) begin
          tmp = tmp.next;
       end
      node.next = tmp.next;
      tmp.next = node;
     end
     node_count++;
  endfunction : insert_node_at_end

  virtual function void insert_node_at_index(int value, int index);
    int node_count_tmp = 1;
    node_class tmp;

    node_class node = new();
    node_class.value = value;

    tmp = next;

    if(index > node_count) 
      $write("Index %0d is beyond node count, please insert proper index value\n", index);
    else begin
     while(node_count_tmp != index) begin
       node_count_tmp++;
       tmp = tmp.next;
     end
     node.next = tmp.next;
     tmp.next = node;
    end

  endfunction : insert_node_at_index

endclass
        
         







