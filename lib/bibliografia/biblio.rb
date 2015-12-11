#Clase que representa la bliblioteca 

class Biblioteca
   attr_reader :autor, :isbn, :titulo, :fecha_publicacion, :serie, :editorial, :num_edicion
   def initialize(autor,isbn,titulo,fecha,editorial,edicion)

      #variables de instancia
		@autor=autor
		@isbn=isbn
		@titulo=titulo
		@fecha_publicacion=fecha
		@editorial=editorial
		@num_edicion=edicion
   end

  #metodo para insertar la serie del libro
   def set_serie(serie)
   	 	@serie=serie
   	 
   end
  
   
#metodo que muestra la referencia formateada de la biblioteca 
   
   def formato
   puts "------------------------------------------------------------------------------------"
    @autor.each do |aut|
      print aut+","
    end
    puts "\n"+@titulo
    print @serie
    puts @editorial+" : "+edicion+" "+@fecha_serie
    
    #añadi self.isbn porque por algun motivo mostraba dos veces el contenido del array
    
    puts self.isbn
    puts "------------------------------------------------------------------------------------"
   end

   
end