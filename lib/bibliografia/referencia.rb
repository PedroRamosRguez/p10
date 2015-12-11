class Referencia
    include Comparable
    attr_reader :tipo_doc,:autor,:titulo,:fecha
    def initialize(tipo_doc,autor,titulo,fecha)
        @tipo_doc=tipo_doc
        @autor=autor
        @titulo=titulo
        @fecha=fecha
    end
    def <=>(other)
        t_comparable=self.fecha <=> other.fecha
        t_comparable
    end
    #invierte apellidos por nombres, y muestra el apellido de cada autor y los nombres solo la primera letra seguido de un punto. Y si hay más de un autor añade un '&'
    def formato_autores
        @autor_formato=[]
        @autor.each do |aut|
            auxiliar=""
            aut=aut.split(" ")
            
            aut=aut.reverse
            aut.each_with_index do |aux,i|
                if(i<1)
                    auxiliar+=aux.capitalize
                    auxiliar+= ","
                else
                    auxiliar+=aux[0].capitalize
                    auxiliar+="."
                end
               
            end
            @autor_formato.push(auxiliar)
            @autor=@autor_formato
            end
             t_auxiliar=@autor_formato
             @autor_formato= ""
             
              t_auxiliar.each_with_index do |aux2,i|
               
                 if (i<@autor.size-1)
                    @autor_formato+=aux2
                    @autor_formato+=" & "
                    
                 else
                     @autor_formato+=aux2
                    
                 end
                @autor=@autor_formato  
              end
    
    
    end
    
    #pone en mayuscula la primera letra de los titulos 
    
    def formato_titulo
       titulo_for=@titulo.split(".")
       auxiliar=""
       titulo_for.each do |i|
            
            aux=i.capitalize
            aux+=(".")
            auxiliar+=aux
        end
        @titulo=auxiliar
    end
end

