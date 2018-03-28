(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_string.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/03/28 15:19:08 by snadaras          #+#    #+#             *)
(*   Updated: 2018/03/28 15:21:26 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


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
        print_endline (repeat_string ~str:"Toto" 1);
        print_endline (repeat_string 2);
        print_endline (repeat_string ~str:"a" 5);
        print_endline (repeat_string ~str:"what" 3);
        print_endline (repeat_string ~str:"Great! " 10)
    end

let () = main ()
