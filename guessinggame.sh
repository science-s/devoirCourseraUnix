#!/usr/bin/env bash

# Fonction pour compter le nombre de fichiers dans le répertoire actuel
function count_files {
    echo $(ls -1 | wc -l)
}

# Fonction principale du jeu
function guessinggame {
    local file_count=$(count_files)
    local guess=0

    echo "Bienvenue dans le jeu de devinettes !"
    echo "Pouvez-vous deviner combien de fichiers se trouvent dans le répertoire actuel ?"

    while [[ $guess -ne $file_count ]]; do
        read -p "Entrez votre estimation : " guess

        if [[ ! $guess =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre valide."
        elif [[ $guess -lt $file_count ]]; then
            echo "Trop bas ! Essayez encore."
        elif [[ $guess -gt $file_count ]]; then
            echo "Trop haut ! Essayez encore."
        else
            echo "Félicitations ! Vous avez trouvé : il y a $file_count fichiers."
        fi
    done
}

# Appel de la fonction principale
guessinggame
