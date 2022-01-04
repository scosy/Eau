# Créez un programme qui affiche ses arguments reçus à l’envers.

# Fonction utilisée
def reverse_arguments(*args)
  reversed = []
  (1..ARGV.length).each { |i| reversed << ARGV[-i] }
  reversed
end

# Gestion d'erreurs
puts "erreur" if ARGV.length == 0; exit

# Résolution
result = reverse_arguments(ARGV)

# Affichage
puts result