
#EJERCICIO 3.1

def count_words(file_name)
  file = File.open(file_name, 'r')
  lines = file.readlines

  puts lines

  # sum = 0
  # lines.each do |line|
  #   sum += line.split(" ").count
  # end

  sum2 = lines.inject(0){|acc, line| acc + line.split(' ').count }

  file.close

  sum2
end

num_words = count_words('peliculas.txt')
puts "El archivo tiene #{num_words} palabras"


#EJERCICIO 3.2

puts ""

def count_equal_words(file_name, word)
  file = File.open(file_name, 'r')
  lines = file.readlines

  puts lines

  sum = 0
  lines.each do |line|
    line.split(" ").map do |e|
      if e == word
        sum += 1
      end
    end

  end

  file.close

  sum
end

word = 'de'
num_equal_words = count_equal_words('peliculas.txt', word)
puts "El archivo tiene #{num_equal_words} veces la palabras '#{word}'"
