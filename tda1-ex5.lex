%{
/* TD1 Analyse Synatxique - Exercise 5 */
%}
%option noinput
%option nounput
%%
[a-y] {return yytext[0] + 1;}
z return 'a';
[A-Y] {return yytext[0] + 1;}
Z return 'A';
[âàçêéèëîïôûùüœÂÀÇÊÉÈËÎÏÔÛÙÜŒ]+ {return yytext[0];}
.|\n return yytext[0];
<<EOF>> return 0;
%%
int main(int argc, char* argv[]) {
    char c;
    while((c = yylex()) != 0) {
        printf("%c", c);
    } 
    return 0;
}