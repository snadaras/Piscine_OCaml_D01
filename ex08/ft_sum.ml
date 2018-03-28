(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_sum.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/03/28 15:34:32 by snadaras          #+#    #+#             *)
(*   Updated: 2018/03/28 15:35:10 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let ft_sum f x n =
    let rec addSum f x acc =
        if x > n then
            acc
        else
            addSum f (x + 1) (acc +. (f x))
    in
        addSum f x 0.

let main () =
    print_float (ft_sum (fun i -> float_of_int (i * i)) 1 10);
    print_char '\n'

let () = main ()
