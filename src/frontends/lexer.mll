(** Grammar rules for lexer of MiniML *)
{
open Util
open Syntax
open Grammar
open Lexing

let keyword_table = Hashtbl.create 32
let _ =
  List.iter (fun (kwd, tok) -> Hashtbl.add keyword_table kwd tok)
    ([("else", ELSE);
      ("false", BOOLCONST false);
      ("fun", FUN);
      ("if", IF);
      ("in", IN);
      ("let", LET);
      ("mod", MOD);
      ("not", NOT);
      ("rec", REC);
      ("then", THEN);
      ("true", BOOLCONST true)])

let lexical_error lexbuf msg =
  let pos = lexeme_start_p lexbuf in 
  let pos_line = pos.pos_lnum in
  let pos_col = pos.pos_cnum - pos.pos_bol in
  fail pos_line pos_col "Syntax error"
}

let digitchar = ['0'-'9']
let idchar = ['A'-'Z''a'-'z''_']
let primechar = [''']
let ident = (idchar | digitchar)* ('?' idchar | idchar) (idchar | digitchar | primechar)* 
let digits = digitchar+

rule token = parse
  [' ' '\t'] { token lexbuf }
| '\n' { Lexing.new_line lexbuf; token lexbuf }
| "(*" { comments 0 lexbuf }
| "->" { ARROW } 
| "<=" { LE }
| ">=" { GE }
| '=' { EQ }
| "<>" { NE }
| "<" { LT }
| ">" { GT }
| '+' { PLUS }
| '-' { MINUS }
| '/' { DIV }
| '*' { TIMES }
| '(' { LPAREN }
| ')' { RPAREN }
| ident as kw
    { try
      Hashtbl.find keyword_table kw
    with Not_found ->
      IDENT (kw)
    }
| digits as num { INTCONST (int_of_string num) }
| eof { EOF }
| _ { lexical_error lexbuf None }

and comments level = parse
| "*)" { if level = 0 then token lexbuf
         else comments (level - 1) lexbuf
       }
| "(*" { comments (level + 1) lexbuf }
| '\n' { Lexing.new_line lexbuf; comments (level) lexbuf }
| _ { comments level lexbuf }
| eof { token lexbuf }
