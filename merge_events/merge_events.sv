module merge_events1;
event a,b; //declaring events a,b//
initial begin
  fork
#50 ->a;//triggering event a at 50ns//
#30 ->b;//triggering event b at 30ns//
#20 b=a; //merging events a and b//
begin
  wait(a.triggered); //waiting for event a //
  $display("[%0t] event a is done",$time);
end
begin
  wait(b.triggered); //waiting for event b//
  $display("[%0t] event b is done",$time);
end
join
end
endmodule
