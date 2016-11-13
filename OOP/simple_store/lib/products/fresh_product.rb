class FreshProduct < Product
    attr_reader :expiration_date

   include DiscountEligible
   
   
def initialize(hash)
       self.expiration_date = hash['expiration_date']
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
      
      
      
      
        
      
      
end
