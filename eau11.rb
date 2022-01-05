# Créez un programme qui affiche la différence minimum absolue
# entre deux éléments d’un tableau constitué uniquement de nombres.
#  Nombres négatifs acceptés.

# Fonctions utilisées
def only_numbers(array)
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9") == c.size) ? () : (are_numbers = false; break) }
  are_numbers
end

def sort_values_to_int(array)
  array.map! { |s| s.to_i }
  array.sort!.reverse!
end

def differences(array)
  sort_values_to_int(array)
  differences = []
  for ind in 1..array.size - 1
    differences << array[ind - 1] - array[ind]
  end
  differences.sort[0]
end
# Gestion d'erreurs
(puts "error"; exit) if !only_numbers(ARGV)
(puts "error"; exit) if ARGV.size < 2

# Résolution
minimum_absolute_difference = differences(ARGV)

# Affichage
puts minimum_absolute_difference