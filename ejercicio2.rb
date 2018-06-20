
#EJERCICIO 2.1

def count_lines(file_name)
  file = File.open(file_name, 'r')
  lines = file.readlines
  puts lines
  file.close
  lines.count
end

num_lines = count_lines('peliculas.txt')
puts "El archivo tiene #{num_lines} líneas"
