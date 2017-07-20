require './slime'
require './hero'


module Techacademy
    module RPG
        class Game
            def self.start
                hero = Characters::Hero.new
                slime_A = Characters::Slime.new('A')
                
                slime_A.attack(hero)
                hero.attack(slime_A)
            end
        end
    end
end

Techacademy::RPG::Game.start