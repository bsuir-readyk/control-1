uses SysUtils;

var
  y, a, apow, res: Double;
  c: Integer;
begin
  a := -2;

  while a < 4.0001 do
  begin
    if Abs(a) < 0.0001 then
      WriteLn('a=0    не в одз')
    else
    begin
      c := 11;
      apow := -a;
      dang := 13;

      while c >= 1 do
      begin
        dang := c + apow / dang; 

        apow := apow * (-a);
        c := c - 2;
      end;
      WriteLn(Format('', [a, (dang-a)/a]))
    end;
  end;
end.

