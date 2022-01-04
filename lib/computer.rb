# frozen_string_literal: true

class Computer
  def initial_guess
    Array.new(4, rand(1..6).to_s)
  end

  def make_guess(guess, feedback)
    new_guess = Array.new(4)
    feedback.each_with_index do |value, index|
      new_guess[index] = if value == 'black'
                           guess[index]
                         else
                           rand(1..6).to_s
                         end
    end
    new_guess
  end

  def make_code
    Array.new(4, rand(1..6).to_s)
  end
end
