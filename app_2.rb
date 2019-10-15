require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


#intro
puts "--------------------------------------------------"
puts "         WELCOME TO 'RUBY VEUT MA POO'     "
puts " le but du jeu est d'être le dernier survivant !"
puts "--------------------------------------------------"

#initiatialisation du joueur Human
puts "Quel est ton blaze ?"
name = gets.chomp
user = HumanPlayer.new(name)

#initiatialisation des joueurs ordi + création boucle
player1 = Player.new("Josiane")
player2 = Player.new("José")

ennemies = []
ennemies << player1, player2


#boucle de jeu
while user.life_points >0 && (player1.life_points > 0 || player2.life_points >0) do
    puts "Voici l'état de nos joueurs :"
    user.show_state
    player1.show_state
    player2.show_state

    puts " "

    puts "Quelle action veux-tu effectuer ?"
    puts "a - chercher une meilleure arme"
    puts "s - chercher à se soigner"
    puts "attaquer un joueur en vue :"
    puts "0 - Josiane a 10 points de vie"
    puts "1 - José a 10 points de vie"
    input = gets.chomp
        if input == "#{a}"
            user.search_weapon
        elsif input == "#{s}"
            user.search_health_pack
        elsif input == "#{0}"
            user.attacks(player1)
        else input == "#{1}"
            user.attacks(player2)
        end
    end

=begin
    puts "Les autres joueurs t'attaquent !"
    ennemies.attacks(user1)

    if user.life_points <0 && (player1.life_points < 0 || player2.life_points <0)
        break
    
    player2.attacks(player1)
    end 

    puts "La partie est finie"
    puts "BRAVO ! TU AS GAGNE"
end
=end

binding.pry