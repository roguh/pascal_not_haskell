program print_pascal_triangle;

var p : array of array of longint;
	i, j : integer;

begin
	setlength(p, 20, 20);
	for i := 0 to 19 do
	begin
		p[i, i] := 1;
		p[i, 0] := 1;
		for j := 1 to i - 1 do
			p[i, j] := p[i - 1, j - 1] + p[i - 1, j];
		for j := 0 to i do
			write(p[i, j], ' ');
		writeLn();
	end;
end.
