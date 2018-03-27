
let rec hofst_f n =
    if n = 0 then
        1
    else if n > 0 then
        n - hofst_m (hofst_f (n - 1))
    else
        -1
and hofst_m n =
    if n = 0 then
        0
    else if n > 0 then
        n - hofst_f (hofst_m (n - 1))
    else
        -1

let main () =
    print_int (hofst_m 0);
    print_char '\n';
    print_int (hofst_f 0);
    print_char '\n';
    print_int (hofst_m 4);
    print_char '\n';
    print_int (hofst_f 4);
    print_char '\n';
    print_int (hofst_m (-42));
    print_char '\n';
    print_int (hofst_f (-42));
    print_char '\n'

let () = main ()