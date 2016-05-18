class Animal
  
  def initialize(nombre= nil ,sonido=nil)
      @nombre=nombre
      @sonido=sonido
  end
  
  def get_nombre
     return @nombre
  end
  
  def set_nombre(nombre)
      @nombre=nombre
  end

  def get_son
    return @sonido
  end
  
  def set_son(sonido)
    @sonido=sonido
  end    
  
  def to_s
    "El animal #{@nombre} hace #{@sonido}"
  end
  
end


per=Amimal.new("Perro", "Guaw")
puts per.to_s

gat=Amimal.new("Gato", "Miaw")
puts gat.to_s
