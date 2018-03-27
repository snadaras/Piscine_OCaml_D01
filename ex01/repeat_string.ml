
let rec repeat_string ?(str = "x") x =
    if x == 0 then
        ""
    else if x < 0 then
        "Error"
    else
       str ^ repeat_string ~str:str (x - 1)

let main () =
    begin
        print_endline (repeat_string (-1));
        print_endline (repeat_string 0);
        print_endline (repeat_string ~str:"text" 0);
        print_endline (repeat_string ~str:"Toto" 1);
        print_endline (repeat_string 2);
        print_endline (repeat_string ~str:"a" 5);
        print_endline (repeat_string ~str:"what" 3);
        print_endline (repeat_string ~str:"Great! " 10)



let () = main ()