X:integer;
Procedure foo ( b : integer )
b:=13;
if x=12 and b=13 then 
printf("by copy");
elseif x=13 and b=13 then
printf("by address");
else
printf("a mystery");
end if;
end foo  
