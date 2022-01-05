# Créez un programme qui affiche le premier nombre premier supérieur au nombre donné en argument.

# Fonctions utilisées
def is_numeric_and_positive(str)
  if str.to_i < 0 
    false
  else 
    !str.match?(/[a-zA-Z]/) ? true : false
  end
end

def is_prime_number(number)
  arr = [2, 3, 5]
  if ((!arr.include?(number))&&(number.to_i == 1 || number.to_i % 2 == 0 || number.to_i % 3 == 0 || number.to_i % 5 == 0))
    false
  else
    true
  end
end

def prime_number(number)
  number = (number.to_i + 1) while !is_prime_number(number)
  number
end

# Gestion d'erreur
(puts "-1"; exit) if ARGV.length != 1
(puts "-1"; exit) unless is_numeric_and_positive(ARGV[0])

# Parsing
number = ARGV[0].to_i + 1

# Résolution
next_prime_number = prime_number(number)

# Affichage
puts next_prime_number