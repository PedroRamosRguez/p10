require "./lista.rb"
require "./libro.rb"
require "./art_revista.rb"
require "./art_periodico.rb"
class Citasbibliograficas
    
    attr_reader:l_citas
    def initialize(listt)
        @l_citas=listt
    end
    def ordena
       
       lista_aux=Lista.new
       orden=@l_citas.sort
       orden.each do |i|
            lista_aux.inserta([i])
       end
        @l_citas=lista_aux
      
       
    end
    
    def mostrar_cita
       @l_citas.mostrar
    end
    
    def to_s
    formato_final =""
    @l_citas.each do |elemento|
      print "\t"
      formato_final += elemento.to_s
      print "\n"
    end
    formato_final
    end
  
end

libro1=Libro.new("Libro",["Dave Thomas Berd"," Andy Hunt", "Chad Fowler"],[" ISBN-13: 978-1937785499.
				ISBN-10: 1937785491."],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’
				Guide", "(July 7, 2013)","Pragmatic Bookshelf;"," 4 edition","1","WIKIPEDIA")
libro1.set_serie("Serie 2")
libro1.formato_autores
libro1.formato_titulo
revista1=Art_rev.new("Revista",["pepe"],"Agujeros de Gusano","Science","(25)","(July 7 2015)","2 edition","10","wikipedia")
revista1.formato_autores
revista1.formato_titulo
periodico1=Art_periodico.new("Arti-periodico",["Francisco mendez"],"prueba titulo","El dia","(July 7 2015)","50-53")
periodico1.formato_autores
periodico1.formato_titulo
list1=Lista.new
list1.inserta([libro1,revista1,periodico1])
cita1=Citasbibliograficas.new(list1)
cita1.ordena
cita1.mostrar_cita
