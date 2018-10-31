class Requerimento < SitePrism::Page
 

    element :pessoa, '#j_id36\:tipoPessoa\:0'
    element :categorai, 'select.w40pc > option:nth-child(2)'
    element :cpf, '.mask-cpf'
    element :opcao_1, '#j_id36\:j_id76\:0'
    element :codigo_autorizacao, '#j_id36\:j_id80 > div:nth-child(1) > input:nth-child(2)'
    element :input_captcha, '#j_id36\:captcha'

    # Clicando em Prosseguir
    def prosseguir
        click_button 'Próxima'
    end

    #metodo alert javaScript
    def infomacao
        page.execute_script('alert("Digite o texto da Captcha\n"
         + "Lembrando que você terá 15 Segundos\n"
         + "Para finalizar o Processo\n"
         + "Por Gentileza não clique em nenhum botão\n"
         + "Esta menssagem será fechada em 15 segundos");')  
         sleep(15)
     end

    #metódo habilitando campo
    def codigo
        page.accept_alert
        input_captcha.click
    end

    #Criação do método Leitura onde de um arquivo texto ao qual resultará de um Número de Autorização
    def leitura
        File.open('protocolo.txt', 'r') do |ler|
            while novaLinha = ler.gets
              @protocolo = novaLinha
            end
        end
        numero = @protocolo.split(":")
        @autorizacao = numero[1]
    end

    # Método Preenche os dados no formula´rio
    def preencher_formulario(cpf_informado)
        leitura
        pessoa.click
        categorai.select_option
        cpf.click
        cpf.set cpf_informado
        opcao_1.click
        codigo_autorizacao.click
        codigo_autorizacao.set  @autorizacao
        infomacao
        codigo
        prosseguir
    end
    
end