#!/usr/bin/env ruby
require './person'
require './student'
require './classroom'
require './corrector'

donald = Student.new(age: 18, classroom: 'none', name: 'Donald')
math = Classroom.new('Math')

p donald.classroom
donald.classroom = math
p donald.classroom.label
p math.students.first.name