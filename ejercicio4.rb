
file_name = 'stock.txt'
file = File.open(file_name, 'r')
lines = file.readlines
file.close
products = lines.map { |e| e.chomp.split(', ') }

def stock_by_product(products)
  stock_producto_x = 0
  puts ''
  products.each do |product|
    stock_producto_x = product[1].to_i + product[2].to_i + product[3].to_i
    puts "El producto #{product[0]} tiene en total #{stock_producto_x} unidades."
  end
  end

def stock_by_store(products)
  stock_store_1 = 0
  stock_store_2 = 0
  stock_store_3 = 0
  puts ''
  products.each do |product|
    stock_store_1 += product[1].to_i
    stock_store_2 += product[2].to_i
    stock_store_3 += product[3].to_i
  end

  puts "La Tienda 1 tiene #{stock_store_1} productos"
  puts "La Tienda 2 tiene #{stock_store_2} productos"
  puts "La Tienda 3 tiene #{stock_store_3} productos"
  end

def stock_all_products(products)
  stock_total = 0

  products.each do |product|
    stock_total += product[1].to_i + product[2].to_i + product[3].to_i
  end

  puts ''
  puts "El stock total de productos es: #{stock_total}"
  end

def stock_one_product(products)
  puts 'Ingrese el nombre exacto del producto que desea consultar'
  product_name = gets.chomp

  stock_producto = 0

  products.each do |product|
    if product[0] == product_name
      stock_producto = product[1].to_i + product[2].to_i + product[3].to_i
    end
  end

  puts ''
  puts "El stock de #{product_name} es: #{stock_producto}"
  end

def products_not_registered(products)
  stock_producto = 0

  products.each do |product|
    if product[1] == 'NR' || product[2] == 'NR' || product[3] == 'NR'
      puts "El #{product[0]} no está registrado en una de las bodegas."
    end
  end
  end

def less_stock_than_number(products)
  puts 'Ingrese el stock minimo. El resultado serán los productos que están bajo este stock'
  stock_min = gets.chomp.to_i
  stock_producto = 0

  products.each do |product|
    if product[1].to_i + product[2].to_i + product[3].to_i < stock_min
      puts "El #{product[0]} tiene menos stock que #{stock_min}"
    end
  end
  end

def register_products(_products)
  puts 'Ingrese el nombre del nuevo producto'
  new_product_name = gets.chomp

  puts 'Ingrese el número del stock de la tienda 1'
  stock_tienda1 = gets.chomp.to_i

  puts 'Ingrese el número del stock de la tienda 2'
  stock_tienda2 = gets.chomp.to_i

  puts 'Ingrese el número del stock de la tienda 3'
  stock_tienda3 = gets.chomp.to_i

  file = File.open('stock.txt', 'a')
  file.puts "#{new_product_name}, #{stock_tienda1}, #{stock_tienda2}, #{stock_tienda3}"
  file.close
  end

option = 0

while option != 6

  puts ''
  puts 'Ingresa un número entero del 1 al 6'
  puts 'La opción 1 te permite conocer la cantidad de productos existentes'
  puts 'La opción 2 te permite conocer el stock de un producto'
  puts 'La opción 3 te muestra los productos no registrados en cada bodega.'
  puts 'La opción 4 te permite conocer los productos con stock menor al valor que tú ingreses.'
  puts 'La opción 5 te permite registrar un nuevo producto con su respectivo stock en cada bodega.'
  puts 'La opción 6 es para salir'

  option = gets.chomp

  puts case option
       when '1'

         option2 = 'a'

         while option2 != 'd'

         puts 'Ingresa una de las 4 siguientes opciones'
         puts 'a) Mostrar la existencia por productos.'
         puts 'b) Mostrar la existencia total por tienda.'
         puts 'c) Mostrar la existencia total en todas las tiendas.'
         puts 'd) Volver al menú principal.'

         option2 = gets.chomp

           puts case option2
                  when 'a'
                    stock_by_product(products)
                  when 'b'
                    stock_by_store(products)
                  when 'c'
                    stock_all_products(products)
                  when 'd'
                  else
                    puts 'Por favor ingresa una opción válida'
                  end
          end
       when '2'
         stock_one_product(products)
       when '3'
         products_not_registered(products)
       when '4'
         less_stock_than_number(products)
       when '5'
         register_products(products)
       when '6'
         break
       else
         puts 'Ingresa correctamente un número entero entre 1 y 6 por favor'
       end
end
