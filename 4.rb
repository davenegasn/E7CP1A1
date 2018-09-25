personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

h = Hash[personas.zip edades]

puts h

def avg_age(ages)
	sum = 0
	ages.each { |name, age|
		sum += age
	}
	puts sum / ages.length  
end 

avg_age(h)