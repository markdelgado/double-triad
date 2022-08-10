class Player
    attr_accessor :name, :email, :password, :deck
    def initialize(name, email, password, deck=[])
        @name = name
        @email = email
        @password = password
        @deck = deck
    end
end

class Card 
    attr_accessor :name, :top, :left, :bottom, :right, :element=nil, :img=nil
    def initialize(name, top, left, bottom, right, element=nil, img=nil)
        @name = name 
        @top = top
        @left = left
        @bottom = bottom
        @right = right
        @element = element
        @img = img
    end
end

