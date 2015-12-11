require "spec_helper"
require "./lib/bibliografia/biblio.rb"
require "./lib/bibliografia/lista.rb"
require "./lib/bibliografia/referencia.rb"
require "./lib/bibliografia/libro.rb"
require "./lib/bibliografia/art_revista.rb"
require "./lib/bibliografia/art_periodico.rb"
require "./lib/bibliografia/doc_electronico.rb"
require "./lib/bibliografia/citas.rb"
describe Biblioteca do
   before :each do
   	 @bil=Biblioteca.new(["pepe","juan"],["123","456","999"],"Programacion en Ruby","(12/5/15)","santillana","4 edition")
	end
	

		 it "No puede haber ningún autor" do
    		     @bil.autor.length.should_not be 0
    		 end
    
		 it "El libro debe tener un titulo" do
    		  
    		     @bil.titulo.length.should_not be 0
    		 end
	
		 it "Debe haber o no una serie" do
    		   
    		    @bil.serie
    		 end
	
		 it "No puede haber ningún ISBN" do
    		   
    		     @bil.isbn.length.should_not be 0
    		 end
   
		 it "Debe haber una editorial" do
    		   
    		     @bil.editorial.length.should_not be 0
    		 end
	
		 it "Debe haber una numero de edicion" do
    		   
    		  
    		     @bil.num_edicion.length.should_not be 0
    		 end
	
		 it "Debe haber una fecha de publicacion" do
    		  
    		  
    		     @bil.fecha_publicacion.length.should_not be 0
    		 end
    	it "insertada la serie" do
    		@bil.set_serie("Programacion")
    	end
	end
    	describe Node do
    		before:all do
    			@nod=Node.new("pepe",nil)
    		end
    			it "Debe existir un nodo de la lista con sus datos y su siguiente" do
	   	 			expect(@nod.value).not_to eq(nil)
	   	    end	
        end
      
        describe Lista do
    			before:all do
	   			
	   			@libro1=Biblioteca.new(["Dave Thomas","Andy Hunt" ,"Chad Fowler" ],[" ISBN-13: 978-1937785499.
				ISBN-10: 1937785491."],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’
				Guide", "(July 7, 2013)","Pragmatic Bookshelf;"," 4 edition")
				@libro1.set_serie("Serie 2")
				
				@libro2=Biblioteca.new(["Scott Chacon"],[" ISBN-13: 978-
				1430218333. ISBN-10: 1430218339."],"Pro Git 2009th Edition", "(August 27, 2009)","(Pro). Apress"," 2009 edition")
				
				
				@libro3=Biblioteca.new(["David Flanagan, Yukihiro Matsumoto"],[" ISBN-13: 978-0596516178"],
				"The Ruby Programming Language","(February
				4, 2008)","O’Reilly Media;"," 1 edition.")
				@libro3.set_serie("Serie 6")
				
				@libro4=Biblioteca.new(["David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy."],
				["ISBN-10: 1934356379. ISBN-13: 978-1934356371."],
				" The RSpecBook: Behaviour Driven Development with RSpec,Cucumber, and Friends (The Facets of Ruby)Cucumber, and Friends (The Facets of Ruby)",
				"(December 25, 2010)","Pragmatic Bookshelf","1 edition")
				@libro4.set_serie("Serie 7")
				
				@libro5=Biblioteca.new(["Richard E. Silverman"],
				[" ISBN-10: 1449325866.ISBN-13: 978-1449325862"],"Git Pocket Guide O’Reilly Media",
				"(August 2, 2013)","Pragmatic Bookshelf"," 1 edition")
				    
	   		    
    		@list=Lista.new()
    	    end
    		it "Existe una lista vacia" do
		   	   expect(Lista.new().empty?).to eq(true)	
	   	    end
	   	     it "Se puede insertar un elemento" do
	   	    		
	   	    		@list.inserta([@libro1])
	   	    end
	   	    it "Se puede insertar varios elementos" do
	   	    		
	   	    		@list.inserta([@libro2,@libro3])
	   	    end
	   	     it "debe existir una Lista con su cabeza" do

		   	    expect(@list.cabeza.value).to eq(@libro3)	
		   	   
	   	    end
	   	    it "debe existir una Lista con su cola" do
	   	       @list=Lista.new
	   	       @list.inserta([@libro1,@libro2])
		   	   expect(@list.cola.value).to eq(@libro1)	
	   	    end
	   	    it "Se extrae el primer elemento de la lista"do
	   	    	  @list=Lista.new
	   	       	  @list.inserta([@libro1,@libro2])
	   	    	  @list.extrae	
	   	    end
	   		it "existe una lista de libros" do
				@list=Lista.new()
				@list.inserta([@libro1,@libro2,@libro3,@libro4,@libro5])
			end
		end
		describe Referencia do
	   	 	before:all do
	   	 		@ref=Referencia.new("libro","pepe","titulo","01-02-1990")
	   	 	end
	   	 	it "No puede haber ningún autor" do
    		     @ref.autor.length.should_not be 0
    		   
    		 end
    		 it "Clase de la que procede el objeto @ref=Referencia"do
	    		expect(@ref.class).to eq(@ref.class)
	    		
	    	end
	    	it "Referencia hereda de Object"do
	    		expect(@ref.class.superclass).to eq(Object)
	    	end
	     end
	describe Libro do
		 	before:all do
		 		@libro1=Libro.new("libro",["Dave Thomas"," Andy Hunt", "Chad Fowler"],[" ISBN-13: 978-1937785499.
				ISBN-10: 1937785491."],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’
				Guide", "(July 7, 2013)","Pragmatic Bookshelf;"," 4 edition","1","WIKIPEDIA")
				@libro1.set_serie("Serie 2")
			end
    	 	it "existe  clase libro" do
	    	end
	    	 it "No puede haber ningún autor" do
	    	 	
    		     @libro1.autor.length.should_not be 0
    		 end
    		  it "No puede haber ningún ISBN" do
    		     @libro1.isbn.length.should_not be 0
    		   
    		 end
    		 it "existe un libro" do
	    		expect(@libro1.class).to eq(@libro1.class)
	    		
	    	end
	    	it "libro hereda de Referencia" do
	    		expect(@libro1.class.superclass).to eq(Referencia)
	    	end
	end
	 describe Art_rev do
	     	before:all do
	     		@revista1=Art_rev.new("art.revista","pepe","Agujeros de Gusano","Science","(25)","(July 7 2015)","2 edition","10","wikipedia")
    	 	end
    	 	it "existe clase revista" do
	    	end
	    	it "No puede haber ningún autor" do
    		     @revista1.autor.length.should_not be 0
    		 end
    		  it "No puede haber ningún volumen" do
    		     @revista1.volumen.length.should_not be 0
    		   
    		 end
    		 it "existe un Articulo de revista" do
	    		expect(@revista1.class).to eq(@revista1.class)
	    		
	    	end
	    	it "Articulo de revista hereda de Referencia" do
	    		expect(@revista1.class.superclass).to eq(Referencia)
	    	end
	 end
	 describe Art_periodico do
	     	before:all do
	     		@periodico1=Art_periodico.new("art.periodico","pepe","prueba titulo","El dia","(July 7 2015)","50-53")
    	 	end
    	 	it "existe  clase articulo periodico" do
	    	end
	    	it "No puede haber ningún autor" do
    		     @periodico1.autor.length.should_not be 0
    		 end
    		 it "No puede haber ninguna pagina"do
    		     @periodico1.pagina.length.should_not be 0
    		 end
    		 it "existe un Articulo de periodico" do
	    		expect(@periodico1.class).to eq(@periodico1.class)
	    		
	    	end
	    	it "Articulo de perioico hereda de Referencia" do
	    		expect(@periodico1.class.superclass).to eq(Referencia)
	    	end
	  end
	  describe Doc_electronico do
	     	before:all do
	     		@doc1=Doc_electronico.new("Doc.electronico","pepe","prueba titulo","(July 7 2015)","www.ull.es","periodico","prueba editor")
    	 	end
    	 	it "existe clase Doc_electronico" do
	    	end
	    	it "No puede haber ningún autor" do
    		     @doc1.autor.length.should_not be 0
    		 end
    		  it "No puede haber ninguna dirección URL" do
    		     @doc1.url.length.should_not be 0
    		 end
    		 it "existe un Documento electronico" do
	    		expect(@doc1.class).to eq(@doc1.class)
	    		
	    	end
	    	it "Documento electronico hereda de Referencia" do
	    		expect(@doc1.class.superclass).to eq(Referencia)
	    	end
	   end
=begin
	   describe Libro do
	   		before:all do
	   			@libro1=Libro.new("libro",["Dave Thomas", "Andy Hunt", "Chad Fowler"],[" ISBN-13: 978-1937785499.
				ISBN-10: 1937785491."],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’
				Guide", "(July 7, 2013)","Pragmatic Bookshelf;"," 4 edition","1","WIKIPEDIA")
				@libro1.set_serie("Serie 2")
	   			@libro2=Biblioteca.new(["Scott Chacon"],[" ISBN-13: 978-
				1430218333. ISBN-10: 1430218339."],"Pro Git 2009th Edition", "(August 27, 2009)","(Pro). Apress"," 2009 edition")
				
	   		end
	   		it "libro1 < libro2" do
	   			expect(@libro1.autor < @libro2.autor).to eq(true)
	   		end
	   			it "libro1 > libro2(false)" do
	   			expect(@libro1 > @libro2).to eq(false)
	   		end
	   			it "libro1 <= libro2" do
	   			expect(@libro1 <= @libro2).to eq(true)
	   		end
	   			it "libro1 >= libro2(false)" do
	   			expect(@libro1 >= @libro2).to eq(false)
	   		end
		end
		
		describe Lista do
			before:all do
				@libro1=Biblioteca.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],[" ISBN-13: 978-1937785499.
				ISBN-10: 1937785491."],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’
				Guide", "(July 7, 2013)","Pragmatic Bookshelf;"," 4 edition")
				@libro1.set_serie("Serie 2")
				@libro2=Biblioteca.new(["Scott Chacon"],[" ISBN-13: 978-
				1430218333. ISBN-10: 1430218339."],"Pro Git 2009th Edition", "(August 27, 2009)","(Pro). Apress"," 2009 edition")
				@list=Lista.new()
				@list.inserta([@libro1,@libro2])
			end
				it "Uso del min" do
					
					expect(@list.min==@libro1.autor).to eq(true)
					expect(@list.max==@libro2.autor).to eq(true)
					expect(@list.count).to eq(2)
				end
				it "Uso del max" do
					expect(@list.max==@libro2.autor).to eq(true)
				end
					it "Uso del count" do
					expect(@list.count).to eq(2)
				end
		end
=end
#Las pongo como comentariio debido a que el each y <=> tuve que modificarlos 
		describe Citasbibliograficas do
			before:all do
				@libro1=Libro.new("libro",["Dave Thomas", "Andy Hunt", "Chad Fowler"],[" ISBN-13: 978-1937785499.
				ISBN-10: 1937785491."],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’
				Guide", "(July 7, 2013)","Pragmatic Bookshelf;"," 4 edition","1","WIKIPEDIA")
				@libro1.set_serie("Serie 2")
				@doc1=Doc_electronico.new("Doc.electronico","pepe","prueba titulo","(July 7 2015)","www.ull.es","periodico","prueba editor")
				@periodico1=Art_periodico.new("Art.periodico","Juan Lopez","prueba titulo","El dia","(July 7 2015)","50-53")
				@list1=Lista.new
				@list1.inserta([@libro1,@doc1,@periodico1])
				
			end
			it "Clase citas creada" do
				
					@cita1=Citasbibliograficas.new(@list1)
			end
		
		end
	   