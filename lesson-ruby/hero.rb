require './character'

module Techacademy
    module RPG
        module Characters
            class Hero < Character
                @@type="主人公"
                def initialize
                    super(1000, 30)
                end
                def name
                    @@type
                end
                def self.discription
                    puts @@type + "はこの世界を守る勇者だ"
                end
            end
        end
    end
end

