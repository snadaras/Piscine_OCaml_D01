(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   hofstadter_mf.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/03/28 15:28:52 by snadaras          #+#    #+#             *)
(*   Updated: 2018/03/28 15:31:26 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let rec hfs_f n =
    if n = 0 then
        1
    else if n > 0 then
        n - hfs_m (hfs_f (n - 1))
    else
        -1
and hfs_m n =
    if n = 0 then
        0
    else if n > 0 then
        n - hfs_f (hfs_m (n - 1))
    else
        -1

let main () =
    print_int (hfs_m 0);
    print_char '\n';
    print_int (hfs_f 0);
    print_char '\n';
    print_int (hfs_m 4);
    print_char '\n';
    print_int (hfs_f 4);
    print_char '\n';
    print_int (hfs_m (-42));
    print_char '\n';
    print_int (hfs_f (-42));
    print_char '\n'

let () = main ()
