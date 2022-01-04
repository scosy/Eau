# Créez un programme qui affiche ses arguments reçus à l’envers.

# Fonction utilisée
def reverse_arguments(*args)
  reversed = []
  (1..ARGV.length).each { |i| reversed << ARGV[-i] }
  reversed
end

# Gestion d'erreurs
(ARGV.length == 0) ? (puts "erreur") : ()

# Résolution
result = reverse_arguments(ARGV)

# Affichage
puts result