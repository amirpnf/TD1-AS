%{
/* tda1-ex1.lex */
// Let's define two integers to count the occurences
int count_en = 0;
int count_fr = 0;

%}

%option nounput
%option noinput

%%
the   { count_en++; }
of    { count_en++; }
and   { count_en++; }
to    { count_en++; }
a     { count_en++; }
his   { count_en++; }
in    { count_en++; }
with  { count_en++; }
I     { count_en++; }
which   { count_en++; }
de  { count_fr++; }
à   { count_fr++; }
le  { count_fr++; }
la  { count_fr++; }
et  { count_fr++; }
il  { count_fr++; }
les { count_fr++; }
un  { count_fr++; }
en  { count_fr++; }
du  { count_fr++; }
[a-zA-ZâàçêéèëîïôûùüœÂÀÇÊÉÈËÎÏÔÛÙÜŒ]+ ;
. ;
%%

int main(int argc, char* argv[]) {
    yylex();
    printf("Number of English words : %d\n", count_en);
    printf("Number of French words : %d\n", count_fr);

    if(count_en > count_fr)
        printf("The text seems to be written in English \n");
    else
        printf("The text seems to be written in French \n");    
    
    return 0;
}

