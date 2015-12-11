#clase que representa la lista enlazada
require "./referencia.rb"
Node=Struct.new(:value,:next,:before)
class Lista
    include Enumerable
    attr_reader :cabeza,:cola,:n_elementos
    
    def initialize()
        @cabeza=Node.new(nil,nil,nil)
        @cola=Node.new(nil,nil,nil)
        @n_elementos=0 
        
    end
    def each()
        aux=@cola
        while aux.next!=nil do
          yield aux.value
          aux=aux.next
        end
    end
  
    def inserta(item)
       
        item.each do |n|
         nodo=Node.new(nil)
         nodo.value=n
            if @cabeza.value==nil
                @cabeza=nodo
                @cola=nodo
                
            else
                a_cabeza=@cola
                
                while a_cabeza.next!=nil do
                    
                    a_cabeza=a_cabeza.next
                    
                end
               
                a_cabeza.next=nodo
                @cabeza=a_cabeza.next
                @cabeza.before=a_cabeza
            end
            @n_elementos=@n_elementos+1
       end
    end
    
    def extrae
        
        a_aux=@cola
        @cola=@cola.next
        @n_elementos=@n_elementos-1
        a_aux
    end
    def empty?
        if(@cabeza.value==nil)
            true
        else
            false
        end
    end
      

    def mostrar
        aux_cola=@cola
        
        ##print "\t"
        puts aux_cola.value
        while aux_cola.next!=nil do
            #print "\t"
            aux_cola=aux_cola.next
            puts aux_cola.value
        end

    end
end

=begin
ref1=Referencia.new("libro",["Dave Thomas Lopez","pepe perez"],"titulo.Prueba de puntos","01-02-1990")
ref1.formato_autores
ref1.formato_titulo
ref2=Referencia.new("periodico",["juan rodriguez","pepe perez"],"titulo.Prueba de puntos","01-02-1990")
ref2.formato_autores
ref2.formato_titulo
ref3=Referencia.new("revista",["Pepe alvarez","juan gimenez"],"titulo.Prueba de puntos","01-02-1990")
ref3.formato_autores
ref3.formato_titulo
list=Lista.new()
list.inserta([ref1,ref2,ref3])
list.mostrar
=end

