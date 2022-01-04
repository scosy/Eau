# Créez un programme qui détermine si une chaîne de caractère se trouve dans une autre.

# Fonctions utilisées
def contains_numeric(string1, string2)
  string1.match?(/[0-9]/) || string2.match?(/[0-9]/) 
end

def split_strings(string1, string2)
  @array = []
  @array.push string1.split(''); @array.push string2.split('')
  @array
end

def string_includes(string1, string2)
  count = 0
  split_strings(ARGV[0], ARGV[1])
  for i in 0..@array[0].size - 1
    if @array[1][count] == @array[0][i]
      count += 1
    else 
      count == @array[1].size ? break : ()
    end
  end
  count == @array[1].size
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.length != 2
(puts "error2"; exit) if contains_numeric(ARGV[0], ARGV[1])

# Résolution
string_contains = string_includes(ARGV[0], ARGV[1])

# Affichage
puts string_contains