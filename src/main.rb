#!/usr/bin/ruby

#require 'matrix'
#
#def mapmap(x)
#  x.map { |xr| xr.map { |y| yield y}}
#end
#  
#
#def to_m(a)
#  a = a.split(/\n/)
#  a = a.map { |r| r.split(/\s+/)}
#  a = mapmap(a) {|x| x.to_f}
#end
#
#
#
#Programa principal
#
# unless ARGV.size == 1
#   STDERR.puts "Falta un argumento: Nombre del fichero."
#   exit(-1)
# end
#
#
#fichero = File.open(ARGV[0])
#texto = fichero.read
#a,b = texto.split(/\n\n+/)         

a = [[3, 0, 2], [5, 1, 6], [4, 3, 1]]#to_m(a)
b = [[1, 4, 2], [4, 3, 3], [1, 3, 6]]#to_m(b)
s = Array.new(b.size) { Array.new(a.size) }



#Multiplicacion de matrices

for i in 0...a.size do
  for j in 0...b.size do
    s[i][j]=0;
    for k in 0...b.size do
      s[i][j] += a[i][k] * b[k][j]
    end
  end
end

#Mostrar Multiplicacion
puts "\n"
puts "Multipliacion de Matrices"
s.each do |x|
  puts x.join(" ")
end

#Suma de matrices
s[i][j]=0;
for i in 0...a.size do
  for j in 0...b.size do
    s[i][j] += a[i][j] * b[i][j]
  end
end

#Mostrar Suma
puts "\n"
puts "Suma de Matrices"
s.each do |x|
  puts x.join(" ")
end
      



