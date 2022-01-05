# Créez un programme qui affiche le premier index d’un élément recherché dans un tableau.
# Le tableau est constitué de tous les arguments sauf le dernier.
# L’élément recherché est le dernier argument.
# Afficher -1 si l’élément n’est pas trouvé.

# Fonctions utilisées
def separate_string_wanted(array)
  @wanted = ARGV.pop
  @sentence = ARGV
end

def find_index(array)
  separate_string_wanted(array)
  index = -1
  @sentence.each.with_index { |w, i| (w == @wanted) ? (index = i; break) : () }
  index
end
# Gestion d'erreurs
(puts "error"; exit) if ARGV.length === 0 || ARGV.length === 1

# Parsing

# Résolution
index_wanted = find_index(ARGV)

# Affichage
puts index_wanted