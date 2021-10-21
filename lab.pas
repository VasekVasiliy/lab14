function IsLeapYear(x:integer):boolean;
begin
  if ((x mod 4 = 0) and (x mod 100 <> 0)) or (x mod 400 = 0) then
    result := true
  else
    result := false;
end;

function LaterInYear(x,y:integer):integer;
begin
  if x > y then
    result := x
  else
    result := y;
end;

function DaysInYear(x:integer):integer;
begin
  if IsLeapYear(x) then
    result := 366
  else
    result := 365;
end;

function DaysInYearRange(x,y:integer):integer;
begin
  var s := 0;
  for var i := x to y do
    s += DaysInYear(i);
  result := s;
end;

begin
  
end.