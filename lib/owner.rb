require 'pry'
class Owner
  # code goes here

  attr_reader :species
  attr_accessor :name ,:sell_pets, :pets
  @@all = [] #to collect all instances of our class
  #also @@ is syntactic sugar for class variables
  #instead of owner.self.array = 
  @@count = 0

  
def initialize(species)
    @species= species
    @@all << self #every instance gets shoveld
    @pets= {:fishes => [], :dogs => [], :cats => []}
    @@count += 1
  end


  def self.all #Owner.all returls all instances of Owner
   @@all
  end

  def self.count #Owner.count returns number of owners created
  @@count 
  end

  def self.reset_all
    @@count = 0
  end


  def say_species
  "I am a human."
   end

  def buy_fish(fish_name) #owner.buy_fish("Bubbles")
  @fish = Fish.new(fish_name)
  #binding.pry
    @pets[:fishes]<<@fish
  end
  
  def buy_cat(cat_name) #owner.buy_fish("Bubbles")
    @cat = Cat.new(cat_name)
    #binding.pry
      @pets[:cats]<<@cat
    end
    
    def buy_dog(dog_name) #owner.buy_fish("Bubbles")
      @dog = Dog.new(dog_name)
      #binding.pry
        @pets[:dogs]<<@dog
      end
      
      def walk_dogs
      @pets[:dogs].each do
        |x|
        x.mood ="happy"
      end
      end

      def play_with_cats
        @pets[:cats].each do
          |x|
          x.mood ="happy"
        end
        end

        def feed_fish
          @pets[:fishes].each do
            |x|
            x.mood ="happy"
          end
          end

          def sell_pets
            @pets.each do |k,v|
                v.each do |animals| animals.mood = "nervous"
                end  
              end
              @pets= {:fishes => [], :dogs => [], :cats => []}
          end

          def list_pets
          "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
          end

#binding.pry

end

binding.pry
p = "3"
# owner1 = Owner.new("human")
#   fish1 =Fish.new("Nemo") 
#    cat=  Cat.new("Crookshanks")
#    dog1 =  Dog.new("Fido")
#    Owner.all
#    owner2 = Owner.new("human")
#    Owner.count #> 2 
#    Owner.all #> owner1 , owner 2
#    Owner.reset_all #> Owner.count #> 0
#    owner1.species #> 'human' owner #> owner1.species1 = "hamster" #> error
#    owner1.name = "Fernando"
#    owner1.buy_fish("Bub") 
#    binding.pry 
#    p 'fernando'

# @pets.each do |k,v|
#   v.each do |animals| animals.mood = "nervous"
#   end  
# end