# Genera una tabla de multiplicar con el bloque times de una sola linea
10.times do |number| puts "5 x #{number+1} = #{(number+1)*5}" end

# : Aqu´ı se visualiza el tipo de bloque de la clase Proc, usado para el
# ejercicio de la tabla.

    print_table = Proc.new do |number|
  puts  puts "5 x #{number+1} = #{(number+1)*5}"
end

10.times &print_table

# : Aqu´ı nombramos los argumentos pasados al bloque lo cual clarifica el
# codigo.

full_name = Proc.new do |first: name, last: surname|
  puts "#{last}, #{first}"
end

full_name.call(first: 'Fernando', last: 'Cruz')
full_name.call(last: 'Cruz', first: 'Fernando')

# : En este pedacito de c´odigo declaramos un m´etodo que simula la carga
# de una base de datos y caracter´ısticas importantes de los bloques.

    def load_users(database, &block)
  puts database
  puts block.class
  puts block.source_location
  puts block.parameters
  block.call(first: 'Fernando', last: 'Cruz')
end

load_users('users.sqlite3', &full_name)

# : Con la palabra yield usamos un bloque para cambiar a min´uscula el
# ´ultimo elemento del arreglo, si se paso como par´ametro. Se crea un bloque con
# el m´etodo nombrando el retorno e imprimiendo el mensaje.

users = ['Maria', 'Ramon', 'Victor', 'Juan']
def last_user(users)
  yield(users.last.downcase) if block_given?
  users.last
end
last_user(users) do |user|
  puts "El ultimo usuario es : #{user}"
end

puts last_user(users)

# : Asignaci´on de par´ametros variables a bloques con el nombre list,
# obligando a que estos par´ametros sean nombrados (**)

full_name = Proc.new do |first: 'Maria', last: 'Sanchez', **list|
  puts "#{last}, #{first}: #{list}"
end

full_name.call(first: 'Ramon', last: 'Ayala', birth: 1982, male: true)
full_name.call(birth: 1990, female: true)

# : Tambi´en funciona con lambda: asignaci´on de par´ametros variables
# a bloques con el nombre list, obligando a que estos par´ametros sean nombrados
# (**)

full_name = lambda do |first: 'Maria', last: 'Sanchez', **list|
  puts "#{last}, #{first}: #{list}"
end

full_name.call(first: 'Ramon', last: 'Ayala', birth: 1982, male: true)
full_name.call(birth: 1990, female: true)

# : Tipos y diferencias entre bloques.

block_proc = proc do |a, b|
  [a, b]
end
block_lambda = lambda do |a, b|
  [a, b]
end

p block_proc.call('A', true, 2)
p block_proc.call('A')
p block_proc.call(['A', false])

#p block_lambda.call('A', true, 2)
#p block_lambda.call('A')
#p block_lambda.call(['A', false])
p block_proc.lambda?
p block_lambda.lambda?