class Art_rev < Referencia
    attr_reader  :nombre_rev,:volumen, :num_edicion,:num_paginas,:lugar_pub
   def initialize(tipo_doc,autor,titulo,nombre_rev,volumen,fecha,edicion,num_paginas,lugar_pub)
        super(tipo_doc,autor,titulo,fecha)
		@nombre_rev=nombre_rev
		@volumen=volumen
		@num_edicion=edicion
		@num_paginas=num_paginas
		@lugar_pub=lugar_pub
   end
   def to_s
        "#{@tipo_doc}:#{@autor} (#{@fecha}).#{@titulo} #{@num_paginas}(#{@num_edicion})(#{@volumen}). #{@lugar_pub}"
   end
 

end