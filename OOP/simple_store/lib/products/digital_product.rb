class DigitalProduct <Product
        attr_reader :expiration_date
        attr_reader :url
   
      include DiscountEligible
      
def initialize(hash)
       self.expiration_date=hash['expiration_date']
       self.url =hash['url']
       super
end
    
      def expiration_date=(expiration_date)
          @expiration_date = expiration_date
         if @expiration_date == nil
              fail SimpleStore::Error, 'O produto não pode estar vencido'
            elsif @expiration_date == 0
              fail SimpleStore::Error, 'O produto não pode estar vencido'
            elsif Date.parse(@expiration_date) < Date.today 
             fail SimpleStore::Error, 'O produto não pode estar vencido'
         end      
      end 
      
      def url=(url)
        @url = url
        if @url[0,4] == "http"
          @url
        else 
       fail SimpleStore::Error, 'A URL do produto deve ser válida'
        end
      end 
      
      
end

