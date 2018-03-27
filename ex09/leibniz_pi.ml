
let leibniz_pi delta =
    let ref = 4. *. (atan 1.) in
    let rec floop ref x value =
        if delta < 0.0
        then -1
        else if value <= ref +. delta && value >= ref -. delta
        then x
        else floop ref (x + 1) (value +. (4. *. ((-1.) ** float_of_int x) /. (2. *. (float_of_int x) +. 1.)))
    in 
    floop ref 0 0.0

let main () = 
    print_int (leibniz_pi 0.1);
    print_char '\n';
    print_int (leibniz_pi 0.01);
    print_char '\n';
    print_int (leibniz_pi 0.001);
    print_char '\n';
    print_int (leibniz_pi 0.0001);
    print_char '\n';
    print_int (leibniz_pi 0.00001);
    print_char '\n';
    print_int (leibniz_pi 0.0000001);
    print_char '\n'

let () = main ()