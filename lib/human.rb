# frozen_string_literal: true

class Human
  def make_code
    print 'Please enter a code (4 digits between 1 and 6): '
    code = gets.chomp
    code.split('')
  end
end
