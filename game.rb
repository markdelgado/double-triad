require 'securerandom'
require 'sqlite3'

db = SQLite3::Database.new('game.db')

# Create a table
rows = db.execute <<-SQL
  create table numbers (
    name varchar(30),
    val int
  );
SQL
p rows


class Player
    attr_accessor :name, :email, :password, :deck
    def initialize(name, email, password, deck=[])
        @name = name
        @email = email
        @password = password
        @deck = deck
    end
end

#in order to save this information we would need to create  a cards table
class Card
  attr_accessor :name, :top, :left, :bottom, :right, :element, :img
  def initialize(name, top, left, bottom, right, element=nil, img=nil)
    @name = name 
    @top = top
    @left = left
    @bottom = bottom
    @right = right
    @element = element
    @img = img
    @card_id = SecureRandom.uuid
  end
end

