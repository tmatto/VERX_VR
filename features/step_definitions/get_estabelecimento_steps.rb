Dado('que faca consulta na lista de estabelecimentos') do
   @result = Estabelecimento.new.url(@lista)      #monta url get
   @result_parsed = @result.parsed_response       #transforma responsa em hash
 end

 Quando('a api retornar os dados com sucesso') do
    @result_parsed = @result.parsed_response                #transforma responsa em hash
    expect(@result.code). to eql 200                        #validar sucesso
    expect(@result.body). to match ("typeOfEstablishment")  #validar tag no response
end

 
 Então('exibo um estabelecimento da lista') do
   puts "\n Exibe um Estabelecimento #typeOfEstablishment: #{@result.parsed_response["typeOfEstablishment"].sample}"  
   
 end

