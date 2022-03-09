#!/usr/bin/env ruby
require './person'
require './student'
require './classroom'
require './corrector'
require './book'
require './rental'

donald = Student.new(age: 18, classroom: 'none', name: 'Donald')
p donald.play_hooky
dracula = Book.new('robinhood', 'dracula')
donald.add_rental(dracula, '01-02-2021')
p donald.rentals.first.book
