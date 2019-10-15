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
        else
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

class HumanPlayer < Player
    attr_accessor :weapon_level

    def initialize(username)
        @user_life_points = 100
        @username = name        
        @weapon_level = 1

        super(name)
    end

    def show_state
        puts "#{@username} a #{@user_life_points} points de vie et une arme de niveau #{@weapon_level}"
    end

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon
        new_weapon_level = rand(1..6)
        return new_weapon_level
        
        puts "Tu as trouvé une arme de niveau #{new_weapon_level}".
        if new_weapon_level > @weapon_level
            @weapon_level = new_weapon_level
            puts "Yeah, cette arme est meilleure que l'actuelle : tu la gardes !"
        else new_weapon_level < @weapon_level
            puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
        end
    end

    def search_health_pack
        health_pack = rand(1..6)
        if health_pack == 1
            puts "Tu n'as rien trouvé..."
        elsif health_pack  (2...5)
            @life_points += 50
            puts "Bravo, tu as trouvé un pack de +50 points de vie !"
        else health_pack  == 6
            @life_points = 80
            puts "Waow, tu as trouvé un pack de +80 points de vie !"
        end
    end

