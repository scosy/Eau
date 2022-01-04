# Créez un programme qui affiche toutes les différentes combinaisons de deux nombre entre 00 et 99 dans l’ordre croissant.

# Fonction utilisée
def two_numbers_combination
  range1 = *("00".."99")
  range2 = *("00".."99")
  result = []

  range1.map! do |n1|
    range2.map do |n2|
      if n1 != n2
        n1.chars.sort.join; n2.chars.sort.join
        if !result.include?("#{n2} #{n1}".split(' ').sort.join(', '))
          result << "#{n2} #{n1}".split(' ').sort.join(', ')
        end
      end
    end
  end
    result
end

# Résolution
combinations = two_numbers_combination

#Affichage
puts combinations