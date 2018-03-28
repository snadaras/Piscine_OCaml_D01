(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   iter.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/03/28 15:32:23 by snadaras          #+#    #+#             *)
(*   Updated: 2018/03/28 15:32:50 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let rec iter f x n =
    if n = 0 then
        x
    else if n = 1 then
        f x
    else if n < 0 then
        -1
    else
        f (iter f x (n - 1))

let main () =
    print_int (iter (fun x -> x * x) 2 4);
    print_char '\n';
    print_int (iter (fun x -> x * 2) 2 4);
    print_char '\n'

let () = main ()
