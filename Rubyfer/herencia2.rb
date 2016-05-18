
class Veiculo      
      def initialize(dueno= nil, puertas= nil, ruedas=nil)
        @dueno=dueno
        @puertas=puertas
        @ruedas=ruedas
      end
      
            attr_accessor :dueno, :puertas ,:ruedas
      
      def caracteristicas
        "Las caracteristicas del producto son"
      end
      
end

class Automovil < Veiculo
        
    def initialize(dueno= nil, puertas= nil, ruedas=nil, descapotable=nil)
        super(dueno, puertas, ruedas)
        @descapotable=descapotable
      end
     
         attr_accessor :descapotable
      
    def subir
        puts "Subiendo al automovil" 
    end
    
    def bajar
       puts "Bajando al automovil" 
    end
end

class Camioneta < Veiculo
        
    def initialize(dueno= nil, puertas= nil, ruedas=nil, tara=nil, carga=0)
        super(dueno, puertas, ruedas)
        @tara=tara
        @carga=carga
      end
      
        attr_accessor :tara, :carga
    
    def cargar(kilos)
       @carga+=kilos 
    end
    
end

mi_Auto=Automovil.new("Jose Luis", 5,  4, false)
p(mi_Auto)

mi_camioneta=Camioneta.new("Mika Andrade", 2,  4, 1000, 0)
mi_camioneta.cargar(200)
puts "La camioneta tiene una carga de #{mi_camioneta.carga} Kilos"
mi_camioneta.cargar(300)
puts "La camioneta tiene una carga de #{mi_camioneta.carga} Kilos"
mi_camioneta.tara= 3000
puts "La tara de mi camioneta es #{mi_camioneta.tara}"
