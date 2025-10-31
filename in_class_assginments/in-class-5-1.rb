class Player
    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

class Armor

    attr_accessor :armor

    def initialize

        @armor = [
        {
            :name => "iron helmet",
            :ac => 8
        },
        {
            :name => "chain mail",
            :ac => 16           # armor class
        }
        ]
        @weapon = [ "short sword", "1d6" ]  # name, damage
    end

    def compute_damage(base)
    # Pretend this is some complex thing with AC
    end
end

class Stats
    attr_accessor :hp, :str, :dex, :con, :int, :wis, :cha

    def initialize
        @hp = 10
        @str = 9         # stats
        @dex = 12
        @con = 8
        @int = 18
        @wis = 10
        @cha = 2
    end

    def damage(p)
        @hp -= p
    end

end


p = Player.new("Alfredo")
a = Armor.new

puts a.armor