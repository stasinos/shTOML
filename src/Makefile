CC        = cc
PREFIX    = /usr/local
FPIC      = -fPIC
CFLAGS    = -std=c99 -Wall -Wextra -Wimplicit-fallthrough ${FPIC} -O2 -g
SANITIZER = -fsanitize=address -fsanitize=undefined
#COVERAGE  = -g3 -Og --coverage -lgcov -fprofile-arcs -ftest-coverage

.PHONY: all clean install check

all: toml2json

toml2json: toml2bash.c toml.c
	${CC} ${CFLAGS} -o toml2bash ${SANITIZER} ${COVERAGE} toml.c toml2bash.c

clean:
	rm -f *.o *.gcov *.gcda *.gcno toml2json toml-c-test ${LIB} ${SOLIB}
