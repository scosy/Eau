# Créez un programme qui détermine si une chaîne de caractères ne contient que des chiffres.

# Fonctions utilisées
def all_figures(string)
  is_figure = true
  string.split('').map! { |c| (c.match?(/[0-9]/)) ? (isfigure = true) : (is_figure = false; break) }
  is_figure 
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.length != 1

# Résolution
figures_only = all_figures(ARGV[0])

# Affichage
puts figures_only