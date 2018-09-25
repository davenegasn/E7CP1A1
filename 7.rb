inventario = {"Notebooks" => 4, "PC Escritorio" => 6, "Routers" => 10, "Impresoras" => 6}

prompt = "> "
puts "4 opciones"

puts "1 - Agregar item"
puts "2 - Eliminar item"
puts "3 - Actualizar item"
puts "4 - Mostrar total"
puts "5 - Mostrar mayor stock"
puts "6 - Mostrar si existe"
puts "7 - Salir"



while user_input = gets.chomp # loop while getting user input
  case user_input
  when "1"
    print "Ingresar Item"
    print prompt
    item = gets.chomp
    
    print "Ingresar stock"
    print prompt
    stock = gets.chomp

    inventario[:item] = stock
    print inventario
  when "2"
  	print "Ingresar item a eliminar"
  	print prompt
    eliminar = gets.chomp
    inventario.delete(eliminar)
  when "3"
  	print "Ingresar producto a actualizar"
  	print prompt
  	item = gets.chomp
  	print "Ingresar stock"
    print prompt
    stock = gets.chomp

  	inventario[item] = stock

  when "4"
  	total = 0
    inventario.map { |key, value| total += value }
    print "Total #{total}"
  when "5"
  	stocks = []
    inventario.map { |key, value| stocks << value }
    max_index = stocks.index(stocks.max)
    print "El producto con mayor stock es #{stocks[max_index]}"

  when "7"
  	print "See ya later.."
  	break
  else
    puts "Seleccionar entre 1 y 4"
    print prompt 
  end
end