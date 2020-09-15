require_relative 'lib/adagrams'

ALL_LETTERS = {
    A: 9,
    B: 2,
    C: 2,
    D: 4,
    E: 12,
    F: 2,
    G: 3,
    H: 2,
    I: 9,
    J: 1,
    K: 1,
    L: 4,
    M: 2,
    N: 6,
    O: 8,
    P: 2,
    Q: 1,
    R: 6,
    S: 4,
    T: 6,
    U: 4,
    V: 2,
    W: 2,
    X: 1,
    Y: 2,
    Z: 1
}

def display_welcome_message
  puts "Welcome to Adagrams!"
  puts "Let's draw 10 letters from the letter pool..."
end

def display_drawn_letters(letters)
  puts "You have drawn the letters:"
  puts letters.join(', ')
end

def run_game
  display_welcome_message
  display_drawn_letters(draw_letters)
end

def draw_letters
  all_letters = []

  ALL_LETTERS.each do |keys, values|
    values.times do
      all_letters << keys.to_s
    end
  end

  return all_letters.shuffle.first(10)
end

p draw_letters

run_game


