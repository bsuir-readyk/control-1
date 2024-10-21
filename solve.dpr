uses
  SysUtils;

var
  x, h, a, b, res, underRoot: Double;
begin
  Write('a: ');
  Read(a);
  Write('b: ');
  Read(b);
  Write('h: ');
  Read(h);
  
  x := a;
  while(x < b + 0.00001) do
  begin
    if Abs(x) < 0.00001 then
    begin
      WriteLn(Format('x=%-8f       не в одз', [x]));
    end
    else
    begin
      underRoot := Cos(PI * x - 1/3);
      if Abs(underRoot) < 0.0001 then 
        res := 0
      else if underRoot < 0 then
        res := (-Exp(Ln(Abs(underRoot)) / 7)) / x
      else
        res := (Exp(Ln(underRoot) / 7)) / x;

      WriteLn(Format('x=%-8f       f(x)=%-8f', [x, res]));
    end;

    x := x + h;
  end;

  if Abs(x - b - h) > 0.0001 then
  begin
    x := b;
    underRoot := Cos(PI * x - 1/3);
    if underRoot < 0 then
      res := (-Exp(Ln(Abs(underRoot)) / 7)) / x
    else
      res := (Exp(Ln(underRoot) / 7)) / x;

    WriteLn(Format('x=%-8f       f(x)=%-8f', [x, res]));
  end;
end.
