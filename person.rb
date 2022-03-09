#!/usr/bin/env ruby
require './corrector'
class Person
  def initialize(age:, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @corrector = Corrector.new
    @name = validate_name(name)
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  # I have to disable this linter about Naming in order to stick with the task.
  # rubocop:disable Naming/PredicateName
  def is_of_age?
    @age >= 18
  end

  # rubocop:enable Naming/PredicateName
  def can_use_services?
    is_of_age? || @parent_permission
  end

  def validate_name(name)
    @corrector.correct_name(name)
  end
end
