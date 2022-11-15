
module wait_example;
event e;  //declaring event e//
initial begin 
  $display($time,"\t triggering the event");
  ->e;     //triggering the event e//
end 
initial begin
  $display($time,"\t waiting for the event using wait");
  wait(e.triggered);  //waiting for the event e using wait() operator//
  $display($time,"\t event is triggered using wait");
end
initial begin
  $display($time,"\t waiting for the event using @");
  @(e.triggered);  //waiting for the event e using @ operator//
  $display($time,"\t event is triggered using @");
end
endmodule
