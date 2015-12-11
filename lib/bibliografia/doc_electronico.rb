class Doc_electronico < Referencia
    attr_reader:url,:tipo_med,:editor
   def initialize(tipo_doc,autor,titulo,fecha,url,tipo_med,editor)
        super(tipo_doc,autor,titulo,fecha)
		@url=url
		@tipo_med=tipo_med
        @editor=editor    	
   end
   def to_s
        "#{@tipo_doc}:#{@autor} (#{@fecha}).#{@titulo}(#{@num_edicion}),(#{@volumen}).[#{@tipo_med}]. #{@lugar_pub}"
   end
end