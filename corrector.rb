#!/usr/bin/env ruby
class Corrector
  def correct_name(name)
    if name.length > 10
      name.capitalize.strip
    else
      name.capitalize
    end
  end
  name.capitalize[0..10]
end
