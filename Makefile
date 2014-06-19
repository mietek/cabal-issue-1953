.PHONY: dep depclean configure build test clean

dep:
	cabal sandbox init
	cabal install --only-dep

depclean:
	cabal sandbox delete

configure:
	cabal configure --enable-tests

build:
	cabal build

test:
	cabal test --test-option=42

doc:
	cabal haddock

clean:
	cabal clean

ci: depclean dep configure test doc
