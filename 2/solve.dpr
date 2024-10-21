uses SysUtils;

var
  res, sum, kz, nz, z: Double;
  n, k: Integer;
begin
  z := 0.45;
  while z < 0.60001 do
  begin
    n := 3;
    nz := 0;
    kz := 0;

    sum := 0;
    k := 1;

    while n <= 15 do
    begin
      nz := nz + z * 3;
      res := ln(nz) / 7;

      while k <= n do 
      begin
        kz := kz + k;
        sum := sum + Cos(kz) / k;

        k := k + 1;
      end;

      res := res - sum;
      WriteLn(Format('z=%-8f n=%-8d res=%-8f', [z, n, res]));

      n := n + 3;
    end;
    
    z := z + 0.05;
  end;
end.

{ f(z,n) = ln(nz) / 7 - sum(cos(k*z) / k, k, 1, n) }
