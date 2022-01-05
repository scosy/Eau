# Créez un programme qui trie une liste de nombres.
# Votre programme devra implémenter l’algorithme du tri par sélection.

# Vous utiliserez une fonction de cette forme (selon votre langage) :
# my_select_sort(array) {
# 	# votre algorithme
# 	return (new_array)
# }

# Fonctions utilisées
def only_numbers(array)
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9") == c.size) ? () : (are_numbers = false; break) }
  are_numbers
end

def my_select_sort(array)
  for ind in 0..array.size - 2
    min = ind
    for j in ind + 1..array.size - 1
      (array[j] < array[min]) ? (min = j) : ()
    end
    (min != ind) ? (array.insert(ind, array.slice!(min))) : ()
  end
  array.join(" ")
end

# Gestion d'erreurs
(puts "error"; exit) if !only_numbers(ARGV)
(puts "error"; exit) if ARGV.size < 2

# Parsing
number = ARGV.map! { |e| e.to_i }

# Affichage
puts my_select_sort(number)
