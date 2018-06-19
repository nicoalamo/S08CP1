
#EJERCICIO 1.1

def create_html(string1, string2)
  file = File.open('index.html', 'w')
  file.puts "<p>#{string1}</p>"
  file.puts "<p>#{string2}</p>"
  file.close
  return nil
end

create_html('hola', 'chao')

#EJERCICIO 1.2

def create_html_con_arreglo(string1, string2, arreglo)
  file = File.open('index2.html', 'w')
  file.puts "<p>#{string1}</p>"
  file.puts "<p>#{string2}</p>"

  if arreglo[0] != nil
    file.puts '<ol>'
    arreglo.each do |value|
      file.puts "  <li>#{value}</li>"
    end
    file.puts '</ol>'
    file.close
  end
  return nil
end

create_html_con_arreglo('hola', 'chao', %w[jsakjksa akjskajs kajskjs])

#EJERCICIO 1.3

def create_html_con_color(string1, string2, arreglo, color)
  file = File.open('index3.html', 'w')
  file.puts "<p style='background-color:#{color}'>#{string1}</p>"
  file.puts "<p style='background-color:#{color}'>#{string2}</p>"

  if arreglo[0] != nil
    file.puts '<ol>'
    arreglo.each do |value|
      file.puts "  <li>#{value}</li>"
    end
    file.puts '</ol>'
    file.close
  end
  return nil
end

create_html_con_color('hola', 'chao', %w[jsakjksa akjskajs kajskjs], "rgb(0,31,3)")
