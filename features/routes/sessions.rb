require 'httparty'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE #DESABILITA SSL

class Estabelecimento 

    include HTTParty
    base_uri "https://portal.vr.com.br" 


    def url(data)
        return self.class.get ('/api-web/comum/enumerations/VRPAT')
        
    end


end