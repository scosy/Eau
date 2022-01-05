# Créez un programme qui affiche le N-ème élément de la célèbre suite de Fibonacci.
# (0, 1, 1, 2) étant le début de la suite et le premier élément étant à l’index 0.

#Fonctions utilisées
def is_numeric_and_positive(str)
  str.to_i < 0 ? false : true if !str.match?(/[a-zA-Z]/)
end

def fibonacci_suite(number)
  range = 1..number-1
  suite = [0, 1]
  range.each { |i| suite << suite [i-1] + suite[i] }
  suite[number]
end

# Gestion d'erreurs
(puts "erreur"; exit) if ARGV.length != 1
(puts "-1"; exit) unless is_numeric_and_positive(ARGV[0])

# Parsing
n = ARGV[0].to_i

# Résolution
fibonacci = fibonacci_suite(n)

# Affichage
puts fibonacci