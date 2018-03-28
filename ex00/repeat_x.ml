(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_x.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/03/28 15:16:10 by snadaras          #+#    #+#             *)
(*   Updated: 2018/03/28 15:17:46 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let repeat_x i =
  let rec floop x str =
	if x = 0 then str
	else if x > 0 then floop (x - 1) (str ^ "x")
	else "Error"
	in floop i ""

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
