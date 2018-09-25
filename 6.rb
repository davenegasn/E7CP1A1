restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# Plato más caro
puts restaurant_menu.key(restaurant_menu.values.max)

# Plato más barato
puts restaurant_menu.key(restaurant_menu.values.min)

# Promedio
sum = 0
restaurant_menu.each { |nombre, precio|
	sum += precio
}
puts sum / restaurant_menu.length  

 