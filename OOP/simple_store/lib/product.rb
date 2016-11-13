class Product 
 attr_reader :title, :price, :manufacturer, :barcode, :code

    def initialize (hash) 
    self.title = hash['title']
    self.price = hash['price']
    self.manufacturer = SimpleStore::AUTHORIZED_MANUFACTURERS.invert[hash['manufacturer_code']]
    @numero = hash['manufacturer_code'] 
    @barcode =  hash['barcode']
    @code = generate_control_code
    end
 
        
    def title=(title)
        @title = title 
        if @title == " " || @title == nil  
        fail SimpleStore::Error, "O título do produto não pode ser vazio"
    else
        @title = title.to_s
        return @title
        end
    end
    
    def price=(price)
        @price = price
        
        if @price == nil 
      fail SimpleStore::Error, "O preço do produto deve ser >= 0.0"
        elsif @price < 0
          fail SimpleStore::Error, "O preço do produto deve ser >= 0.0"
    @price    
        end
    end
    


    def manufacturer=(manufacturer_code)
     @manufacturer = manufacturer_code
          if @manufacturer == nil
           fail SimpleStore::Error, "O fabricante não está autorizado" 
          end
    end
    
     def barcode=(barcode)
        @barcode = barcode
     end
    
      def code=(code)
        @code = code
      end
      
      def descobre_produto(numero)
          if numero.to_i <= 1
              1
             elsif numero.to_i >=5
              2
            else 
              3
          end
        
      end              
              
          
        
    private def generate_control_code()
    @code = "#{descobre_produto(@numero)}--#{@numero}--#{barcode}"
    end
 
    
end    
