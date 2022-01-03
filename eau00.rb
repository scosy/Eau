# Créez un programme qui affiche toutes les différentes combinaisons possibles de trois chiffres dans l’ordre croissant,
#  dans l’ordre croissant. La répétition est volontaire.

#Fonction utilisée
def three_numbers_combination
  range = *("000".."999")
  result = []

  range.map!.with_index do |element, index|
    if element[0] != element[1] && element[0] != element[2] && element[1] != element[2]
      !result.include?(element.chars.sort.join) ? (result.push(element.chars.sort.join)) : ()
    end
  end
  result
end

puts three_numbers_combination