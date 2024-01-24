// Pascal existed before ISBN was invented.
// This program computes the checksum of ISBN numbers given as program arguments (argv).
Uses sysutils;
var
	i,j,c,k: longint;
begin
	for i := 1 to argc - 1 do
	begin
		c := 0;
		k := -10;
		for j := 0 to 11 do
			if argv[i][j] <> '-' then begin
				c := c + k * StrToInt(argv[i][j]); k := k + 1 end;
		c := ((c mod 11) + 11) mod 11;
		write(argv[i]);
		if c = 10 then
			writeLn('X')
		else
			writeLn(c);
	end;
end.