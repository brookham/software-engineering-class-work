class LorCharacter
    def initialize(name, weapon)
        @name = name
        @weapon = weapon
    end

    def fight
        puts "#{@name} attacks the orc with their trusty #{@weapon}"
    end
end

class FateOfChar < LorCharacter
    def fight
        super
        puts "#{@name} dies gripping their #{@weapon}"
    end    
end

char1 = LorCharacter.new("Frodo", "Sword")
char2 = LorCharacter.new("Legolas", "Bow")
char3 = FateOfChar.new("Gollum", "fish")

char1.fight
char2.fight
char3.fight