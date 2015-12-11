class Art_periodico < Referencia
attr_reader  :nombre_per,:pagina 
   def initialize(tipo_doc,autor,titulo,nombre_per,fecha,pagina)
        super(tipo_doc,autor,titulo,fecha)
		@nombre_per=nombre_per
		@pagina=pagina
	
   end
   def to_s
        "#{@tipo_doc}:#{@autor} (#{@fecha}).#{@titulo}#{@nombre_per}pp.#{@pagina}"
   end
end