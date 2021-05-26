with Ada.Text_IO;

procedure BubbleSort is
	package IO renames Ada.Text_IO;
arr : array(0..10) of Integer;
swapped : boolean;
n : Integer;
temp : Integer;
begin
	arr(0) := 11;
	arr(1) := 10;
	arr(2) := 9;
	arr(3) := 8;
	arr(4) := 7;
	arr(5) := 6;
	arr(6) := 5;
	arr(7) := 4;
	arr(8) := 3;
	arr(9) := 2;
	arr(10) := 1;
	n := 11;
	swapped := True;
	while swapped loop
		swapped := False;
		for i in Integer range 1..(n - 1) loop
			if arr(i-1) > arr(i) then
				temp := arr(i);
				arr(i) := arr(i-1);
				arr(i-1) := temp;
				swapped := True;
			end if;
		end loop;
		n := n - 1;
	end loop;
   
   
    for i in Integer range 0..10 loop
		IO.Put_Line(Integer'Image(arr(i)));
    end loop;
	
end BubbleSort;