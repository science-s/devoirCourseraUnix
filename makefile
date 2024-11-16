
all: README.md


README.md: guessinggame.sh
	echo "# Projet: Guessing Game" > README.md
	echo "\nDate et heure d'exécution de make: $$(date)" >> README.md
	echo "\nNombre de lignes de code dans guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
