#!/usr/bin/ruby

require matrix

def mapmap(x)
  x.map { |xr| xr.map { |y| yield y}}
end
  

def to_m(a)
  a = a.split(/\n/)
  a = a.map { |r| r.split(/\s+/)}
  a = mapmap(a) {|x| x.to_f}
end



#Programa principal

 unless ARGV.size == 1
   STDERR.puts "Falta un argumento: Nombre del fichero."
   exit(-1)
 end



fichero = File.open(ARGV[1])
texto = fichero.read
a,b = texto.split(/\n\n+/)         

a = to_m(a)
b = to_m(b)


#Multiplicacion de matrices
for i in (0...a.size)
  for j in (0...b.size)
    a[i][j]=0;
    for k in (0...b.size)
      a[i][j] += a[i][k] * b[k][j]
    end
  end
end


      



