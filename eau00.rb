# Créez un programme qui affiche toutes les différentes combinaisons possibles de trois chiffres dans l’ordre croissant,
#  dans l’ordre croissant. La répétition est volontaire.

# Fonction utilisée
def three_figures_combination
  range = *("000".."999")
  result = []

  range.map!.with_index do |element, index|
    if element.count(element[0]) == 1 && element.count(element[1]) == 1
      !result.include?(element.chars.sort.join) ? (result.push(element.chars.sort.join)) : ()
    end
  end
  result
end

#Résolution
combinations = three_figures_combination

# Affichage
puts combinations