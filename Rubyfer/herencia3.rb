
class Object      
      def initialize(position_x= nil, position_y= nil, weight=nil)
        @position_x=position_x
        @position_y=position_y
        @weight=weight
      end
            attr_accessor :position_x, :position_y ,:weight
      
end

class Weapon < Object
        
      def initialize(position_x= nil, position_y= nil, weight=nil, damage=nil, success_msg=nil, failure_msg=nil)
        @position_x=position_x
        @position_y=position_y
        @weight=weight
        @damage=damage
        @success_msg=success_msg
        @failure_msg=failure_msg
      end
         attr_accessor :damage, :success_msg, :failure_msg
end

class Agent < Object
        
      def initialize(position_x= nil, position_y= nil, weight=nil, health=nil, strength=nil, name=nil, current_weapon=nil)
        @position_x=position_x
        @position_y=position_y
        @weight=weight
        @health=health
        @strength=strength
        @name=name
        @current_weapon=current_weapon
      end
         attr_accessor :health, :strength, :name, :current_weapon
end


mi_object=Object.new(2, 3, 4)
p(mi_object)

mi_weapon=Weapon.new(2, 3, 4, 5, "Sucess",  "Failed")
p(mi_weapon)

mi_agent=Agent.new(2, 3, 4, 5, 4, "Juan", "Arma")
p(mi_agent)
