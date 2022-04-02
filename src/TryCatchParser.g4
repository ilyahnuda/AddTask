parser grammar TryCatchParser;

options { tokenVocab=TryCatchLexer; }

block
    : '{' (init ';')* '}'
    ;

identifier
    :  IDENTIFIER
    ;

tryStatement
	:	'try' block catchBlock+
	|	'try' block catchBlock* finallyBlock
	|	'try' '(' resource ')' block catchBlock+
	|   'try' '(' resource ')' block catchBlock* finallyBlock
	;

catchBlock
    : 'catch' '(' exceptions identifier ')' block
    ;

exceptions
    : exceptionName ('|' exceptionName)*
    ;

finallyBlock
    : 'finally' block
    ;

exceptionName
    : identifier ('.' identifier)*
    ;

resource
    : init
    | identifier
    ;
init
    : 'var' identifier '=' 'new' identifier '('')'
    ;