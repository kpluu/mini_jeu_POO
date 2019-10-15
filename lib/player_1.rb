class Player
    attr_accessor :name, :life_points
  
    def initialize(name)
        @name = name
        @life_points = 10
    end

    def show_state
        puts "#{@name} a #{@life_points} points de vie"
    end

    def gets_damage(strength)
        @life_points -= strength
        if @life_points < 0
            @life_points = 0
            puts "Le joueur #{@name} est deaaad !"
        #else
            #puts "#{@name} a #{@life_points} points de vie"
        end
    end

    def attacks(player)
        puts "Le joueur #{@name} attaque le joueur #{player.name}"
        strength = compute_damage
        puts "Elle lui inflige #{strength} point de dommage"
        player.gets_damage(strength)
    end

    def compute_damage
        return rand(1..6)
    end
end