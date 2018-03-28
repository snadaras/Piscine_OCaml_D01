(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   converges.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/03/28 15:33:19 by snadaras          #+#    #+#             *)
(*   Updated: 2018/03/28 15:33:46 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let rec converges f x n =
    if n < 0 then
        false
    else if n = 0 && x = f x then
        true
    else
        converges f (f x) (n - 1)

let main () =
    print_endline (string_of_bool (converges (( * ) 2) 2 5));
    print_endline (string_of_bool (converges (fun x -> x / 2) 2 3));
    print_endline (string_of_bool (converges (fun x-> x / 2) 2 2))

let () = main ()
