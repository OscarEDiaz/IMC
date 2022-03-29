Definitions.
D = [0-9] 
L = [a-z] 
% De esta forma se evita hacer 0|1|2...|9

Rules.
\s      : skip_token.
aa*b    : {token, {la, TokenChars}}. 
% El resultado es una tupla 
% donde tengo un token que tiene: nombre del token, lenguaje a y tokenchars es la cadena que se asoció
ba      : {token, {lb, TokenChars}}. 
% Token es el nombre que se le da a la unidad lexicográfica
{D}+     : {token, {int, TokenChars}}.
% Se usa las llaves para decir que D NO ES UN SIMBOLO si no una definición de arriba

Erlang code.