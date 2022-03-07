#!/usr/bin/env ruby
class Animal
    attr_accessor :name
    def initialize(type, number_of_legs, name = "Unknown")
        @id = Random.rand(1..1000)
        @name = name
        @number_of_legs = number_of_legs
        @type = type
    end

    def speak
        if @type == "dog"
            "Woof, Woof"
        elsif @type == "spider"
            "..."
        end
    end

    def bring_a_stick
        if @type =="dog"
            "Here your stick ---------"
        end
    end

    def make_a_web
        if@type == "spider"
            "www"
        end
    end

    def id
        @id
    end

    def type 
        @type
    end

end
animal_1 = Animal.new("dog", 4, "Rex")
animal_2 = Animal.new("spider", 8, "Wilma")
animal_1.name= "Lolica"

puts animal_1.speak()
puts animal_2.speak()

puts animal_1.name