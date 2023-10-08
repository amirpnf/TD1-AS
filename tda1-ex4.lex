%{
/* tda1-ex4.lex */
%}
%option nounput
%option noinput
%%
[a-zA-ZâàçêéèëîïôûùüœÂÀÇÊÉÈËÎÏÔÛÙÜŒ]{5,} { printf("%s ", yytext); }
. ;
%%

int main(int argc, char* argv[]) {
    yylex();
    return 0;
}
