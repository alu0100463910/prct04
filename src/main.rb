

require matrix

def mapmap(x)
  x.map { |xr| xr.map { |y| yield y}}
end
  

def to_m(a)
  a = a.split(/\n/)
  a = a.map { |r| r.split(/\s+/)}
  a = mapmap(a) {|x| x.to_f}
end

fichero = File.open(ARGV[0])
texto = fichero.read

a,b = texto.split(/\n\n*/)   // devuelve un string de 1º y 2º matriz

a = to_m(a)
b = to_m(b)


