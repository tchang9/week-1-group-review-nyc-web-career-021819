# Finish the implementation of the Car class so it has the functionality described below
require 'pry'
class Car

    @@all = []

    attr_accessor :make, :model

    def initialize(make, model=0)
        # @make = if has_values?(make)
        #             make[:make]

        if make.class == String
            @make = make
            @model = model
        else
            @make = make[:make]
            @model = make[:model]
        end

        # @model = model
        # @make = make
        @@all << self
        # binding.pry
    end

    def self.all
        @@all
    end

    def drive
        "VROOOOOOOOOOOOM!"
    end



end

volvo_lightning = Car.new("Volvo", "Lightning")
yugo = Car.new("Zastava", "Yugo")
lada = Car.new("AvtoVAZ", "Lada")

# volvo_lightning.make
# #=> "Volvo"
# volvo_lightning.model
# #=> "Lightning"

# volvo_lightning.drive
# => "VROOOOOOOOOOOOM!"

# Car.all
#=> [#<Car:0x00007fae28930f20>, #<Car:0x00007fae28923370>, #<Car:0x00007fae2891ae78>]

# BONUS:

volvo_lightning = Car.new(make: "Volvo", model: "Lightning")
binding.pry

volvo_lightning.make
#=> "Volvo"
volvo_lightning.model
#=> "Lightning"
