# Créez un programme qui met en majuscule une lettre sur deux d’une chaîne de caractères.
# Seule les lettres (A-Z, a-z) sont prises en compte

# Fonctions utilisées
def contains_numeric(string)
  string.match?(/[0-9]/)
end

def split_strings(string)
  @array = string.split('')
end

def even_to_upcase(string)
  split_strings(string)
  string_downcase = string.split('')
  @array.each.with_index { |c, index| c == " " ? @array.delete(c): () }
  @array.map!.with_index { |l, i| i.even? ? l.upcase : l }
  for i in 0..string_downcase.size - 1
    (@array[i].downcase != string_downcase[i]) ? @array.insert(i, " ") : ()
  end
  result = @array.join
end


# Gestion d'erreurs
(puts "error"; exit) if ARGV.length != 1
(puts "error2"; exit) if contains_numeric(ARGV[0])

# Résolution
one_in_two_upcase = even_to_upcase(ARGV[0])

# Affichage
puts one_in_two_upcase