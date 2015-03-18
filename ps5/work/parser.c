/* A Bison parser, made by GNU Bison 3.0.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2013 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 1 "src/parser.y" /* yacc.c:339  */

#include "nodetypes.h"
#include "tree.h"
#include <stdlib.h>

// This defines the type for every $$ value in the productions.
#define YYSTYPE node_t *

#define YYDEBUG 1

// This variable is located in vslc.c
extern int outputStage;

/*
 * Variables connecting the parser to the state of the scanner - defs. will be
 * generated as part of the scanner (lexical analyzer).
 */
extern char yytext[];
extern int yylineno;

/*
 * Wrapper functions for node_init. The main purpose of calling these functions
 * instead of node_init directly is to enable the debug output, as well as a reduction
 * of typing. These functions are named CN for "create
 * node", and L, T, or E if they take an additional label, type or expression_type argument
 * in addition. When the label, type or expression_type is not supplied, node_init is called with
 * default values.
 */
 
node_t* CN(nodetype_t type, int n_children, ...){
	if( outputStage == 2 ) printf( "Hit rule \"%s\" on text '%s' at line %d\n", type.text , yytext, yylineno );
	va_list child_list;
	va_start(child_list, n_children);
	node_t* to_return = node_init(type, NULL, NO_TYPE, default_e, n_children, child_list);
	va_end(child_list);
	return to_return;
}

node_t* CNL(nodetype_t type, char* label, int n_children, ...){
	if( outputStage == 2 ) printf( "Hit rule \"%s\" on text '%s' at line %d\n", type.text , yytext, yylineno );
	va_list child_list;
	va_start(child_list, n_children);
	node_t* to_return = node_init(type, label, NO_TYPE, default_e, n_children, child_list);
	va_end(child_list);
	return to_return;
}

node_t* CNT(nodetype_t type, base_data_type_t base_type, int n_children, ...){
	if( outputStage == 2 ) printf( "Hit rule \"%s\" on text '%s' at line %d\n", type.text , yytext, yylineno );
	va_list child_list;
	va_start(child_list, n_children);
	node_t* to_return = node_init(type, NULL, base_type, default_e, n_children, child_list);
	va_end(child_list);
	return to_return;
}

node_t* CNE(nodetype_t type, expression_type_t expression_type, int n_children, ...){
	if( outputStage == 2 ) printf( "Hit rule \"%s\" on text '%s' at line %d\n", type.text , yytext, yylineno );
	va_list child_list;
	va_start(child_list, n_children);
	node_t* to_return = node_init(type, NULL, NO_TYPE, expression_type, n_children, child_list);
	va_end(child_list);
	return to_return;
}


// Helper for setting the value of an Integer node
static void SetInteger(node_t* node, char *string)
{
	node->int_const = atol ( string );
	node->data_type.base_type= INT_TYPE;
}

// Helper for setting the value of an float node
static void SetFloat(node_t* node, char *string)
{
	node->float_const = atof ( string );
	node->data_type.base_type= FLOAT_TYPE;
}


// Helper for setting the value of an string node
static void SetString(node_t* node, char *string)
{
	node->string_const = STRDUP( string );
	node->data_type.base_type= STRING_TYPE;
}

/*
 * Since the return value of yyparse is an integer (as defined by yacc/bison),
 * we need the top level production to finalize parsing by setting the root
 * node of the entire syntax tree inside its semantic rule instead. This global
 * variable will let us get a hold of the tree root after it has been
 * generated.
 */
node_t *root;


/*
 * These functions are referenced by the generated parser before their
 * definition. Prototyping them saves us a couple of warnings during build.
 */
int yyerror ( const char *error );  /* Defined below */
int yylex ( void );                 /* Defined in the generated scanner */

#line 172 "y.tab.c" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "parser.h".  */
#ifndef YY_YY_WORK_PARSER_H_INCLUDED
# define YY_YY_WORK_PARSER_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    INT_CONST = 258,
    FLOAT_CONST = 259,
    TRUE_CONST = 260,
    FALSE_CONST = 261,
    STRING_CONST = 262,
    INT = 263,
    FLOAT = 264,
    BOOL = 265,
    VOID = 266,
    IDENTIFIER = 267,
    ASSIGN = 268,
    FUNC = 269,
    START = 270,
    PRINT = 271,
    RETURN = 272,
    IF = 273,
    THEN = 274,
    ELSE = 275,
    END = 276,
    WHILE = 277,
    DO = 278,
    EQUAL = 279,
    GEQUAL = 280,
    LEQUAL = 281,
    NEQUAL = 282,
    AND = 283,
    OR = 284,
    NEW = 285,
    ARRAY = 286,
    FOR = 287,
    TO = 288,
    UMINUS = 289
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_WORK_PARSER_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 258 "y.tab.c" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  3
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   543

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  49
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  25
/* YYNRULES -- Number of rules.  */
#define YYNRULES  67
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  129

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   289

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    42,     2,     2,     2,     2,     2,     2,
      45,    46,    39,    37,    47,    38,    44,    40,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,    48,
      35,     2,    36,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    43,     2,    34,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    41
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   151,   151,   155,   159,   160,   163,   164,   167,   168,
     171,   172,   176,   177,   180,   181,   188,   189,   193,   194,
     195,   196,   197,   198,   199,   200,   204,   208,   212,   214,
     218,   222,   224,   228,   234,   235,   236,   237,   238,   239,
     240,   241,   242,   243,   244,   245,   246,   247,   248,   249,
     250,   251,   252,   256,   260,   261,   265,   266,   267,   268,
     269,   273,   274,   275,   276,   277,   281,   284
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "INT_CONST", "FLOAT_CONST", "TRUE_CONST",
  "FALSE_CONST", "STRING_CONST", "INT", "FLOAT", "BOOL", "VOID",
  "IDENTIFIER", "ASSIGN", "FUNC", "START", "PRINT", "RETURN", "IF", "THEN",
  "ELSE", "END", "WHILE", "DO", "EQUAL", "GEQUAL", "LEQUAL", "NEQUAL",
  "AND", "OR", "NEW", "ARRAY", "FOR", "TO", "']'", "'<'", "'>'", "'+'",
  "'-'", "'*'", "'/'", "UMINUS", "'!'", "'['", "'.'", "'('", "')'", "','",
  "';'", "$accept", "program", "function", "function_list",
  "statement_list", "variable_list", "expression_list", "parameter_list",
  "argument_list", "index_list", "statement", "declaration_statement",
  "assignment_statement", "if_statement", "while_statement",
  "return_statement", "print_statement", "for_statement", "expression",
  "call", "lvalue", "constant", "type", "index", "variable", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,    93,    60,    62,    43,    45,    42,
      47,   289,    33,    91,    46,    40,    41,    44,    59
};
# endif

#define YYPACT_NINF -78

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-78)))

#define YYTABLE_NINF -1

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     -78,     5,    66,   -78,   -78,   -78,   -78,   -78,   -78,     3,
      -4,   -27,   -78,   -33,    20,    -8,    66,   -78,     2,    20,
      -2,     0,   -78,    -9,   -78,    14,    66,    34,   -78,   -78,
     -78,   332,   -78,   -78,   -78,   -78,   -78,   353,   353,   353,
     353,    66,   353,   353,   353,   353,   160,   -78,     4,    10,
     -78,   -78,    13,    19,   -78,   460,    30,    37,   -78,    23,
      15,   460,   -78,   -78,   460,    87,   399,    38,    46,    40,
      40,   375,   -78,   -78,   -78,   -78,   -78,   -78,   353,   353,
     353,   353,   353,   353,   353,   353,   353,   353,   353,   353,
     353,   -78,   353,   353,   353,   332,   332,   353,   -78,   148,
      17,    17,   148,   500,   480,    17,    17,   -30,   -30,    40,
      40,   440,   460,    15,    41,   460,    21,   203,   420,   -78,
     -78,   332,   -78,   -78,   332,   246,   289,   -78,   -78
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       5,     0,     2,     1,    61,    62,    63,    64,     4,     0,
       0,     0,    67,     0,     0,    65,    13,    66,     0,     0,
      12,     0,     8,     0,    17,     0,     0,     0,    26,    16,
       9,     0,    58,    59,    56,    57,    60,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     6,     0,     0,
      20,    21,     0,     0,    24,     0,    50,    51,    34,    54,
      32,    10,    50,    51,    31,     0,     0,    52,     0,    47,
      48,     0,     3,     7,    18,    19,    23,    22,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    25,     0,    15,     0,     0,     0,     0,    49,    41,
      43,    44,    42,    45,    46,    40,    39,    35,    36,    37,
      38,     0,    27,    14,     0,    11,     0,     0,     0,    55,
      53,     0,    28,    30,     0,     0,     0,    29,    33
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -78,   -78,   -78,   -78,   -77,   -78,   -13,   -78,   -78,   -78,
     -44,   -12,    42,   -78,   -78,   -78,   -78,   -78,    65,   -25,
     -31,   -78,    -1,    69,    -3
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
      -1,     1,     8,     2,    46,    20,    60,    21,   114,    15,
      47,    48,    49,    50,    51,    52,    53,    54,    55,    62,
      63,    58,    23,    18,    59
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      57,     9,    73,    12,    22,     3,    56,    13,    12,    88,
      89,    57,    16,    90,    30,    57,    14,    10,   116,   117,
      28,    56,    11,    17,    32,    33,    34,    35,    36,     4,
       5,     6,     7,    12,    11,    19,    24,    37,    38,    39,
      67,   121,   122,    40,   125,    26,    27,   126,    29,    31,
      92,    41,    74,    42,    86,    87,    88,    89,    75,    43,
      90,    76,    94,    44,    57,    57,    45,    77,    93,    11,
      56,    56,    73,    73,     4,     5,     6,     7,    91,    97,
     113,    73,    73,    90,    68,    57,    57,   120,    25,     0,
      57,    56,    56,    57,    57,    57,    56,     0,     0,    56,
      56,    56,    61,    64,    65,    66,    95,     0,    69,    70,
      71,    78,    79,    80,    81,    82,    83,     0,     0,     0,
       0,     0,    84,    85,    86,    87,    88,    89,     0,     0,
      90,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    99,   100,   101,   102,   103,   104,   105,
     106,   107,   108,   109,   110,   111,     0,   112,    61,   115,
       0,     0,   118,    32,    33,    34,    35,    36,     4,     5,
       6,     7,    12,    79,    80,     0,    37,    38,    39,     0,
       0,    72,    40,    84,    85,    86,    87,    88,    89,     0,
      41,    90,    42,     0,     0,     0,     0,     0,    43,     0,
       0,     0,    44,     0,     0,    45,    32,    33,    34,    35,
      36,     4,     5,     6,     7,    12,     0,     0,     0,    37,
      38,    39,     0,     0,   123,    40,     0,     0,     0,     0,
       0,     0,     0,    41,     0,    42,     0,     0,     0,     0,
       0,    43,     0,     0,     0,    44,     0,     0,    45,    32,
      33,    34,    35,    36,     4,     5,     6,     7,    12,     0,
       0,     0,    37,    38,    39,     0,     0,   127,    40,     0,
       0,     0,     0,     0,     0,     0,    41,     0,    42,     0,
       0,     0,     0,     0,    43,     0,     0,     0,    44,     0,
       0,    45,    32,    33,    34,    35,    36,     4,     5,     6,
       7,    12,     0,     0,     0,    37,    38,    39,     0,     0,
     128,    40,     0,     0,     0,     0,     0,     0,     0,    41,
       0,    42,     0,     0,     0,     0,     0,    43,     0,     0,
       0,    44,     0,     0,    45,    32,    33,    34,    35,    36,
       4,     5,     6,     7,    12,     0,     0,     0,    37,    38,
      39,     0,     0,     0,    40,     0,    32,    33,    34,    35,
      36,     0,    41,     0,    42,    12,     0,     0,     0,     0,
      43,     0,     0,     0,    44,     0,     0,    45,     0,     0,
       0,     0,     0,    41,     0,     0,     0,     0,     0,     0,
       0,    43,     0,     0,     0,    44,     0,     0,    45,    78,
      79,    80,    81,    82,    83,     0,     0,     0,     0,     0,
      84,    85,    86,    87,    88,    89,     0,     0,    90,     0,
       0,    98,    96,    78,    79,    80,    81,    82,    83,     0,
       0,     0,     0,     0,    84,    85,    86,    87,    88,    89,
       0,     0,    90,   124,    78,    79,    80,    81,    82,    83,
       0,     0,     0,     0,     0,    84,    85,    86,    87,    88,
      89,     0,     0,    90,    78,    79,    80,    81,    82,    83,
       0,     0,     0,     0,   119,    84,    85,    86,    87,    88,
      89,     0,     0,    90,    78,    79,    80,    81,    82,    83,
       0,     0,     0,     0,     0,    84,    85,    86,    87,    88,
      89,     0,     0,    90,    78,    79,    80,    81,    82,     0,
       0,     0,     0,     0,     0,    84,    85,    86,    87,    88,
      89,     0,     0,    90,    78,    79,    80,    81,     0,     0,
       0,     0,     0,     0,     0,    84,    85,    86,    87,    88,
      89,     0,     0,    90
};

static const yytype_int8 yycheck[] =
{
      31,     2,    46,    12,    16,     0,    31,    10,    12,    39,
      40,    42,    45,    43,    26,    46,    43,    14,    95,    96,
      23,    46,    31,     3,     3,     4,     5,     6,     7,     8,
       9,    10,    11,    12,    31,    43,    34,    16,    17,    18,
      41,    20,    21,    22,   121,    47,    46,   124,    34,    15,
      13,    30,    48,    32,    37,    38,    39,    40,    48,    38,
      43,    48,    47,    42,    95,    96,    45,    48,    45,    31,
      95,    96,   116,   117,     8,     9,    10,    11,    48,    33,
      93,   125,   126,    43,    42,   116,   117,    46,    19,    -1,
     121,   116,   117,   124,   125,   126,   121,    -1,    -1,   124,
     125,   126,    37,    38,    39,    40,    19,    -1,    43,    44,
      45,    24,    25,    26,    27,    28,    29,    -1,    -1,    -1,
      -1,    -1,    35,    36,    37,    38,    39,    40,    -1,    -1,
      43,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    -1,    92,    93,    94,
      -1,    -1,    97,     3,     4,     5,     6,     7,     8,     9,
      10,    11,    12,    25,    26,    -1,    16,    17,    18,    -1,
      -1,    21,    22,    35,    36,    37,    38,    39,    40,    -1,
      30,    43,    32,    -1,    -1,    -1,    -1,    -1,    38,    -1,
      -1,    -1,    42,    -1,    -1,    45,     3,     4,     5,     6,
       7,     8,     9,    10,    11,    12,    -1,    -1,    -1,    16,
      17,    18,    -1,    -1,    21,    22,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    30,    -1,    32,    -1,    -1,    -1,    -1,
      -1,    38,    -1,    -1,    -1,    42,    -1,    -1,    45,     3,
       4,     5,     6,     7,     8,     9,    10,    11,    12,    -1,
      -1,    -1,    16,    17,    18,    -1,    -1,    21,    22,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    30,    -1,    32,    -1,
      -1,    -1,    -1,    -1,    38,    -1,    -1,    -1,    42,    -1,
      -1,    45,     3,     4,     5,     6,     7,     8,     9,    10,
      11,    12,    -1,    -1,    -1,    16,    17,    18,    -1,    -1,
      21,    22,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    30,
      -1,    32,    -1,    -1,    -1,    -1,    -1,    38,    -1,    -1,
      -1,    42,    -1,    -1,    45,     3,     4,     5,     6,     7,
       8,     9,    10,    11,    12,    -1,    -1,    -1,    16,    17,
      18,    -1,    -1,    -1,    22,    -1,     3,     4,     5,     6,
       7,    -1,    30,    -1,    32,    12,    -1,    -1,    -1,    -1,
      38,    -1,    -1,    -1,    42,    -1,    -1,    45,    -1,    -1,
      -1,    -1,    -1,    30,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    38,    -1,    -1,    -1,    42,    -1,    -1,    45,    24,
      25,    26,    27,    28,    29,    -1,    -1,    -1,    -1,    -1,
      35,    36,    37,    38,    39,    40,    -1,    -1,    43,    -1,
      -1,    46,    23,    24,    25,    26,    27,    28,    29,    -1,
      -1,    -1,    -1,    -1,    35,    36,    37,    38,    39,    40,
      -1,    -1,    43,    23,    24,    25,    26,    27,    28,    29,
      -1,    -1,    -1,    -1,    -1,    35,    36,    37,    38,    39,
      40,    -1,    -1,    43,    24,    25,    26,    27,    28,    29,
      -1,    -1,    -1,    -1,    34,    35,    36,    37,    38,    39,
      40,    -1,    -1,    43,    24,    25,    26,    27,    28,    29,
      -1,    -1,    -1,    -1,    -1,    35,    36,    37,    38,    39,
      40,    -1,    -1,    43,    24,    25,    26,    27,    28,    -1,
      -1,    -1,    -1,    -1,    -1,    35,    36,    37,    38,    39,
      40,    -1,    -1,    43,    24,    25,    26,    27,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    35,    36,    37,    38,    39,
      40,    -1,    -1,    43
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,    50,    52,     0,     8,     9,    10,    11,    51,    71,
      14,    31,    12,    73,    43,    58,    45,     3,    72,    43,
      54,    56,    60,    71,    34,    72,    47,    46,    73,    34,
      60,    15,     3,     4,     5,     6,     7,    16,    17,    18,
      22,    30,    32,    38,    42,    45,    53,    59,    60,    61,
      62,    63,    64,    65,    66,    67,    68,    69,    70,    73,
      55,    67,    68,    69,    67,    67,    67,    71,    61,    67,
      67,    67,    21,    59,    48,    48,    48,    48,    24,    25,
      26,    27,    28,    29,    35,    36,    37,    38,    39,    40,
      43,    48,    13,    45,    47,    19,    23,    33,    46,    67,
      67,    67,    67,    67,    67,    67,    67,    67,    67,    67,
      67,    67,    67,    55,    57,    67,    53,    53,    67,    34,
      46,    20,    21,    21,    23,    53,    53,    21,    21
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    49,    50,    51,    52,    52,    53,    53,    54,    54,
      55,    55,    56,    56,    57,    57,    58,    58,    59,    59,
      59,    59,    59,    59,    59,    59,    60,    61,    62,    62,
      63,    64,    65,    66,    67,    67,    67,    67,    67,    67,
      67,    67,    67,    67,    67,    67,    67,    67,    67,    67,
      67,    67,    67,    68,    69,    69,    70,    70,    70,    70,
      70,    71,    71,    71,    71,    71,    72,    73
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     9,     2,     0,     1,     2,     1,     3,
       1,     3,     1,     0,     1,     0,     4,     3,     2,     2,
       1,     1,     2,     2,     1,     2,     2,     3,     5,     7,
       5,     2,     2,     7,     1,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     2,     2,     3,
       1,     1,     2,     4,     1,     4,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     3,     1,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 151 "src/parser.y" /* yacc.c:1646  */
    { root = CN ( program_n, 1, (yyvsp[0]) ); }
#line 1506 "y.tab.c" /* yacc.c:1646  */
    break;

  case 3:
#line 156 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( function_n,4, (yyvsp[-8]), (yyvsp[-6]), (yyvsp[-4]), (yyvsp[-1]) ); }
#line 1512 "y.tab.c" /* yacc.c:1646  */
    break;

  case 4:
#line 159 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( function_list_n, 2, (yyvsp[-1]), (yyvsp[0]) ); }
#line 1518 "y.tab.c" /* yacc.c:1646  */
    break;

  case 5:
#line 160 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = NULL; }
#line 1524 "y.tab.c" /* yacc.c:1646  */
    break;

  case 6:
#line 163 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( statement_list_n, 1, (yyvsp[0]) ); }
#line 1530 "y.tab.c" /* yacc.c:1646  */
    break;

  case 7:
#line 164 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( statement_list_n, 2, (yyvsp[-1]), (yyvsp[0]) ); }
#line 1536 "y.tab.c" /* yacc.c:1646  */
    break;

  case 8:
#line 167 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( variable_list_n, 1, (yyvsp[0]) ); }
#line 1542 "y.tab.c" /* yacc.c:1646  */
    break;

  case 9:
#line 168 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( variable_list_n, 2, (yyvsp[-2]), (yyvsp[0]) ); }
#line 1548 "y.tab.c" /* yacc.c:1646  */
    break;

  case 10:
#line 171 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( expression_list_n, 1, (yyvsp[0]) ); }
#line 1554 "y.tab.c" /* yacc.c:1646  */
    break;

  case 11:
#line 172 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN (expression_list_n, 2, (yyvsp[-2]), (yyvsp[0])); }
#line 1560 "y.tab.c" /* yacc.c:1646  */
    break;

  case 12:
#line 176 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( parameter_list_n, 1, (yyvsp[0]) ); }
#line 1566 "y.tab.c" /* yacc.c:1646  */
    break;

  case 13:
#line 177 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = NULL; }
#line 1572 "y.tab.c" /* yacc.c:1646  */
    break;

  case 14:
#line 180 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( argument_list_n, 1, (yyvsp[0]) ); }
#line 1578 "y.tab.c" /* yacc.c:1646  */
    break;

  case 15:
#line 181 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = NULL; }
#line 1584 "y.tab.c" /* yacc.c:1646  */
    break;

  case 16:
#line 188 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( index_list_n, 2, (yyvsp[-3]), (yyvsp[-1]) ); }
#line 1590 "y.tab.c" /* yacc.c:1646  */
    break;

  case 17:
#line 189 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( index_list_n, 1, (yyvsp[-1]) ); }
#line 1596 "y.tab.c" /* yacc.c:1646  */
    break;

  case 18:
#line 193 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( statement_n, 1, (yyvsp[-1]) ); }
#line 1602 "y.tab.c" /* yacc.c:1646  */
    break;

  case 19:
#line 194 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( statement_n, 1, (yyvsp[-1]) ); }
#line 1608 "y.tab.c" /* yacc.c:1646  */
    break;

  case 20:
#line 195 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( statement_n, 1, (yyvsp[0]) ); }
#line 1614 "y.tab.c" /* yacc.c:1646  */
    break;

  case 21:
#line 196 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( statement_n, 1, (yyvsp[0]) ); }
#line 1620 "y.tab.c" /* yacc.c:1646  */
    break;

  case 22:
#line 197 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( statement_n, 1, (yyvsp[-1]) ); }
#line 1626 "y.tab.c" /* yacc.c:1646  */
    break;

  case 23:
#line 198 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( statement_n, 1, (yyvsp[-1]) ); }
#line 1632 "y.tab.c" /* yacc.c:1646  */
    break;

  case 24:
#line 199 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( statement_n, 1, (yyvsp[0]) ); }
#line 1638 "y.tab.c" /* yacc.c:1646  */
    break;

  case 25:
#line 200 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( statement_n, 1, (yyvsp[-1]) ); }
#line 1644 "y.tab.c" /* yacc.c:1646  */
    break;

  case 26:
#line 204 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN(declaration_statement_n, 2, (yyvsp[-1]), (yyvsp[0])); }
#line 1650 "y.tab.c" /* yacc.c:1646  */
    break;

  case 27:
#line 208 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN(assignment_statement_n, 2, (yyvsp[-2]), (yyvsp[0])); }
#line 1656 "y.tab.c" /* yacc.c:1646  */
    break;

  case 28:
#line 213 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN (if_statement_n, 2, (yyvsp[-3]), (yyvsp[-1])); }
#line 1662 "y.tab.c" /* yacc.c:1646  */
    break;

  case 29:
#line 215 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( if_statement_n, 3, (yyvsp[-5]), (yyvsp[-3]), (yyvsp[-1]) ); }
#line 1668 "y.tab.c" /* yacc.c:1646  */
    break;

  case 30:
#line 219 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( while_statement_n, 2, (yyvsp[-3]), (yyvsp[-1]) ); }
#line 1674 "y.tab.c" /* yacc.c:1646  */
    break;

  case 31:
#line 222 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( return_statement_n, 1, (yyvsp[0]) ); }
#line 1680 "y.tab.c" /* yacc.c:1646  */
    break;

  case 32:
#line 224 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( print_statement_n, 1, (yyvsp[0]) ); }
#line 1686 "y.tab.c" /* yacc.c:1646  */
    break;

  case 33:
#line 229 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( for_statement_n, 3, (yyvsp[-5]), (yyvsp[-3]), (yyvsp[-1]) ); }
#line 1692 "y.tab.c" /* yacc.c:1646  */
    break;

  case 34:
#line 234 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE ( expression_n, constant_e, 1, (yyvsp[0]) ); }
#line 1698 "y.tab.c" /* yacc.c:1646  */
    break;

  case 35:
#line 235 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, add_e, 2, (yyvsp[-2]),(yyvsp[0]) );  }
#line 1704 "y.tab.c" /* yacc.c:1646  */
    break;

  case 36:
#line 236 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, sub_e, 2, (yyvsp[-2]),(yyvsp[0]) ); }
#line 1710 "y.tab.c" /* yacc.c:1646  */
    break;

  case 37:
#line 237 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, mul_e, 2, (yyvsp[-2]),(yyvsp[0]) );  }
#line 1716 "y.tab.c" /* yacc.c:1646  */
    break;

  case 38:
#line 238 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, div_e, 2, (yyvsp[-2]),(yyvsp[0]) );  }
#line 1722 "y.tab.c" /* yacc.c:1646  */
    break;

  case 39:
#line 239 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, greater_e, 2, (yyvsp[-2]),(yyvsp[0]) ); }
#line 1728 "y.tab.c" /* yacc.c:1646  */
    break;

  case 40:
#line 240 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, less_e, 2, (yyvsp[-2]),(yyvsp[0]) );  }
#line 1734 "y.tab.c" /* yacc.c:1646  */
    break;

  case 41:
#line 241 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, equal_e, 2, (yyvsp[-2]),(yyvsp[0]) );  }
#line 1740 "y.tab.c" /* yacc.c:1646  */
    break;

  case 42:
#line 242 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, nequal_e, 2, (yyvsp[-2]),(yyvsp[0]) );  }
#line 1746 "y.tab.c" /* yacc.c:1646  */
    break;

  case 43:
#line 243 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, gequal_e, 2, (yyvsp[-2]),(yyvsp[0]) );  }
#line 1752 "y.tab.c" /* yacc.c:1646  */
    break;

  case 44:
#line 244 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, lequal_e, 2, (yyvsp[-2]),(yyvsp[0]) );  }
#line 1758 "y.tab.c" /* yacc.c:1646  */
    break;

  case 45:
#line 245 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, and_e, 2, (yyvsp[-2]),(yyvsp[0]) );  }
#line 1764 "y.tab.c" /* yacc.c:1646  */
    break;

  case 46:
#line 246 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, or_e, 2, (yyvsp[-2]),(yyvsp[0]) );  }
#line 1770 "y.tab.c" /* yacc.c:1646  */
    break;

  case 47:
#line 247 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, uminus_e, 1, (yyvsp[0]));  }
#line 1776 "y.tab.c" /* yacc.c:1646  */
    break;

  case 48:
#line 248 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE(expression_n, not_e, 1, (yyvsp[0])); }
#line 1782 "y.tab.c" /* yacc.c:1646  */
    break;

  case 49:
#line 249 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( expression_n, 1, (yyvsp[-1]) ); }
#line 1788 "y.tab.c" /* yacc.c:1646  */
    break;

  case 50:
#line 250 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( expression_n, 1, (yyvsp[0]) ); }
#line 1794 "y.tab.c" /* yacc.c:1646  */
    break;

  case 51:
#line 251 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( expression_n, 1, (yyvsp[0]) ); }
#line 1800 "y.tab.c" /* yacc.c:1646  */
    break;

  case 52:
#line 252 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE ( expression_n, new_e, 1, (yyvsp[0]) ); }
#line 1806 "y.tab.c" /* yacc.c:1646  */
    break;

  case 53:
#line 256 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE ( expression_n, func_call_e, 2, (yyvsp[-3]), (yyvsp[-1]) );  }
#line 1812 "y.tab.c" /* yacc.c:1646  */
    break;

  case 54:
#line 260 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE ( expression_n, variable_e, 1, (yyvsp[0]) ); }
#line 1818 "y.tab.c" /* yacc.c:1646  */
    break;

  case 55:
#line 261 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNE ( expression_n, array_index_e, 2, (yyvsp[-3]), (yyvsp[-1]) ); }
#line 1824 "y.tab.c" /* yacc.c:1646  */
    break;

  case 56:
#line 265 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNT ( constant_n, BOOL_TYPE, 0 ); (yyval)->bool_const = 1;  }
#line 1830 "y.tab.c" /* yacc.c:1646  */
    break;

  case 57:
#line 266 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNT ( constant_n, BOOL_TYPE, 0 ); (yyval)->bool_const = 0; }
#line 1836 "y.tab.c" /* yacc.c:1646  */
    break;

  case 58:
#line 267 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( constant_n, 0 ); SetInteger((yyval), yytext); }
#line 1842 "y.tab.c" /* yacc.c:1646  */
    break;

  case 59:
#line 268 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( constant_n, 0 ); SetFloat((yyval), yytext); }
#line 1848 "y.tab.c" /* yacc.c:1646  */
    break;

  case 60:
#line 269 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( constant_n, 0 ); SetString((yyval), yytext); }
#line 1854 "y.tab.c" /* yacc.c:1646  */
    break;

  case 61:
#line 273 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNT ( type_n, INT_TYPE, 0 ); }
#line 1860 "y.tab.c" /* yacc.c:1646  */
    break;

  case 62:
#line 274 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNT ( type_n, FLOAT_TYPE, 0 ); }
#line 1866 "y.tab.c" /* yacc.c:1646  */
    break;

  case 63:
#line 275 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNT ( type_n, BOOL_TYPE, 0 );  }
#line 1872 "y.tab.c" /* yacc.c:1646  */
    break;

  case 64:
#line 276 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNT ( type_n, VOID_TYPE, 0 );  }
#line 1878 "y.tab.c" /* yacc.c:1646  */
    break;

  case 65:
#line 277 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNT ( type_n, ARRAY_TYPE, 2, (yyvsp[-2]), (yyvsp[0]) );  }
#line 1884 "y.tab.c" /* yacc.c:1646  */
    break;

  case 66:
#line 281 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CN ( index_n, 0 );  SetInteger((yyval), yytext); }
#line 1890 "y.tab.c" /* yacc.c:1646  */
    break;

  case 67:
#line 284 "src/parser.y" /* yacc.c:1646  */
    { (yyval) = CNL ( variable_n, STRDUP(yytext), 0);}
#line 1896 "y.tab.c" /* yacc.c:1646  */
    break;


#line 1900 "y.tab.c" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 286 "src/parser.y" /* yacc.c:1906  */
 

/*
 * This function is called with an error description when parsing fails.
 * Serious error diagnosis requires a lot of code (and imagination), so in the
 * interest of keeping this project on a manageable scale, we just chuck the
 * message/line number on the error stream and stop dead.
 */
int
yyerror ( const char *error )
{
    fprintf ( stderr, "\tError: %s detected at line %d with yytext: %s\n", error, yylineno, yytext );
    exit ( EXIT_FAILURE );
}
