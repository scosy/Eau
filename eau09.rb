# Créez un programme qui affiche toutes les valeurs comprises entre deux nombres dans l’ordre croissant.
#  Min inclus, max exclus.

# Fonctions utilisées
def contains_numeric(string1, string2)
  string1.match?(/[0-9]/) || string2.match?(/[0-9]/) 
end

def min_max(number1, number2)
  ((number1.to_i - number2.to_i) > 0) ? (@max = number1; @min = number2) : (@max = number2; @min = number1)
end

def middle_values(n1, n2)
  min_max(n1, n2)
  values = *(@min..@max - 1).to_a.join(' ')
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.length != 2
(puts "error2"; exit) unless contains_numeric(ARGV[0], ARGV[1])

# Parsing
number1 = ARGV[0].to_i
number2 = ARGV[1].to_i
# Résolution
between_min_and_max = middle_values(number1, number2)

# Affichage
puts between_min_and_max