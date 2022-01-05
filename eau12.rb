# Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri à bulle.

# Vous utiliserez une fonction de cette forme (selon votre langage) :
# my_bubble_sort(array) {
# 	# votre algorithme
# 	return (new_array)
# }

# Fonctions utilisées
def only_numbers(array)
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9") == c.size) ? () : (!are_numbers; break) }
  are_numbers
end

def sort_values(array)
  range = (array.size - 1)..1
  (range.first).downto((range).last).each do |ind|
    is_sorted = true
    for j in 0.. ind - 1
      (array[j + 1] < array[j]) ? (array.insert(j + 1, array.slice!(j))) : ()
      is_sorted  
    end
  end
  array
end

# Gestion d'erreurs
(puts "error"; exit) if !only_numbers(ARGV)
(puts "error"; exit) if ARGV.size < 2

# Résolution
bubble_sort = sort_values(ARGV)

# Affichage
puts bubble_sort