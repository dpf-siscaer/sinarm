class Registro < SitePrism::Page

    element :select, 'div.form20px:nth-child(2) > div:nth-child(1) > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(2) > select:nth-child(1)'
    elements :tabela, 'tr > td'
   
    #método menus
    def menu
        click_link 'SINARM2_PREHOM'
    end
    
    def home
        click_link "Home"
    end

    def receber
        click_on 'Receber'
    end

    def pesquisar
        click_on "Pesquisar"
    end
       
    def verfica(cpf_registro)
        tabela[16].find('#formAcompanhar\3a j_id141_body > div.form20px.clear.lHeight18px > div:nth-child(1) > table > tbody > tr > td:nth-child(2) > select > option:nth-child(4)').select_option
        tabela[17].find('#formAcompanhar\3a divCamposEntradaPesquisa > input').click.set cpf_registro 
        pesquisar
     

        @requerimento = tabela[27].text
        home
        tabela[17].find('#formAcompanhar\3a divCamposEntradaPesquisa > input').click.set @requerimento
        pesquisar
        receber
        
        tabela[37].click_button 'formAcompanhar:cancelar'
        sleep(5)

        #tabela[39].find('#formAcompanhar\:confimTrans').click
        #page.accept_confirm
        #sleep(5)

    end


end