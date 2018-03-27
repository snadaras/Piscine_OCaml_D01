
let repeat_x i =
  let rec zboub x str =
	if x = 0 then str
	else if x > 0 then zboub (x - 1) (str ^ "x")
	else "Error"
	in zboub i ""

let main () =
 	begin
		print_endline "testing -1: ";
		print_endline (repeat_x(-1));
		print_endline "testing 0: ";
		print_endline (repeat_x 0);
		print_endline "testing 1: ";
		print_endline (repeat_x 1);
		print_endline "testing 2: ";
		print_endline (repeat_x 2);
		print_endline "testing 5: ";
		print_endline (repeat_x 5)
  	end 

let () = main ()