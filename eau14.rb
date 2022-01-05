# Créez un programme qui trie les éléments donnés en argument par ordre ASCII.

# Fonctions utilisées
def sort_array(array)
  sorted = []
  sorted << array.slice!(array.index(array.min)) until array.size < 1
  sorted.join(' ')
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.length < 2

# Résolution
in_ascii_order = sort_array(ARGV)

# Affichage
puts in_ascii_order