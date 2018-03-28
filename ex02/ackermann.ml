(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ackermann.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/03/28 15:22:21 by snadaras          #+#    #+#             *)
(*   Updated: 2018/03/28 15:23:04 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let rec ackermann m n =
    if m < 0 || n < 0
    then
        -1
    else if m = 0
    then
        n + 1
    else if m > 0 && n = 0
    then
        ackermann (m - 1) 1
    else
        ackermann (m-1) (ackermann m (n-1))

let main () =
    print_int (ackermann (-1) 7);
    print_char '\n';
    print_int (ackermann 0 0);
    print_char '\n';
    print_int (ackermann 2 3);
    print_char '\n';
    print_int (ackermann 4 1);
    print_char '\n'

let () = main ()
