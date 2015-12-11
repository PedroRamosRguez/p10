#require "./referencia.rb"
class Libro < Referencia
 attr_reader  :isbn,:serie, :editorial, :num_edicion,:volumen,:lugar_pub
   def initialize(tipo_doc,autor,isbn,titulo,fecha,editorial,edicion,volumen,lugar_pub)
		super(tipo_doc,autor,titulo,fecha)
      #variables de instancia
		@isbn=isbn
		@editorial=editorial
		@num_edicion=edicion
		@lugar_pub=lugar_pub
		@volumen=volumen
   end
    def set_serie(serie)
   	 	@serie=serie
   	 
    end
    def to_s
        "#{@tipo_doc}:#{@autor} (#{@fecha}).#{@titulo} (#{@num_edicion})(#{@volumen}). #{@lugar_pub}"
    end
end
=begin
libro1=Libro.new("Libro",["Dave Thomas"," Andy Hunt", "Chad Fowler"],[" ISBN-13: 978-1937785499.
				ISBN-10: 1937785491."],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’
				Guide", "(July 7, 2013)","Pragmatic Bookshelf;"," 4 edition")
#libro1.set_serie("Serie 2")
#libro1.formato_autores
#libro1.formato_titulo
=end
