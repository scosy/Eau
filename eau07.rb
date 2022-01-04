# Créez un programme qui met en majuscule la première lettre de chaque mot d’une chaîne de caractères.
# Les autres lettres devront être en minuscules.
# Les mots ne sont délimités que par un espace, une tabulation ou un retour à la ligne.

# Fonctions utilisées
def contains_numeric(string)
  string.match?(/[0-9]/)
end

def split_strings(string)
  @array = string.split
end

def first_upcase(string)
  split_strings(string)
  @array.map.with_index { |w, i| w[0].replace(w[0].upcase) +  w[1..w.length].to_s }.join(' ')
end


# Gestion d'erreurs
(puts "error"; exit) if ARGV.length != 1
(puts "error2"; exit) if contains_numeric(ARGV[0])

# Résolution
capitalize = first_upcase(ARGV[0])

# Affichage
puts capitalize