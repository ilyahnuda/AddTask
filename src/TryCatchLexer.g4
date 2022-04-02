lexer grammar TryCatchLexer;

WS:                 [ \t\r\n\u000C]+ -> channel(HIDDEN);

TRY:                'try';
CATCH:              'catch';
FINALLY:            'finally';

fragment LetterOrDigit
    : Letter
    | [0-9]
    ;

fragment Letter
    : [a-zA-Z$_]
    ;

OPEN_BRACKET:             '(';
RIGHT_BRACKET:             ')';
OEPN_BLOCK_BRACKET:             '{';
CLOS_BLOCK_BRACKET:             '}';
DOT:                '.';
BIT_OR:              '|';
SEMICOLON:               ';';
ASSIGN:             '=';

VAR:                'var';
NEW:                'new';

IDENTIFIER: Letter LetterOrDigit*;