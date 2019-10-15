require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#initialisation des joueurs
player1 = Player.new("Josiane")
player2 = Player.new("José")

#boucle de jeu
while player1.life_points > 0 && player2.life_points > 0 do
    puts "Voici l'état de nos joueurs :"
    player1.show_state
    player2.show_state

    puts " "
    
    puts "Passons à la phase d'attaque :"
    player1.attacks(player2)

    if player1.life_points < 0 && player2.life_points < 0
        break
    
    player2.attacks(player1)
    end 

end

#binding.pry