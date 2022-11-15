module non_blockevent;
event BJT; //declaring an event BJT//
initial begin 
  $display($time,"\t triggering the event");
 ->>BJT; //triggering the event BJT using non blocking triggering operator//
end
initial begin
  $display($time,"\t waiting for the event using wait");
  wait(BJT.triggered); //waiting for the event BJT using wait operator//
  $display($time,"\t event BJT is triggered using wait");
end
initial begin
  $display($time,"\t waiting for the event using @");
  @(BJT.triggered);//waiting for the event using @ operator//
  $display($time,"\t event BJT is triggered using @");
end 
endmodule
