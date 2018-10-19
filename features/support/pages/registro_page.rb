class Registro < SitePrism::Page

    element :select, 'div.form20px:nth-child(2) > div:nth-child(1) > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(2) > select:nth-child(1)'
    elements :tabela, 'tr > td'
   
    #método menus
    def menu
        click_link 'SINARM2'
    end
    
    def home
        click_link "Home"
    end
       
    def verfica
            puts "Estou na Linha: #{tabela[16].text}"
            tabela[16].find('#formAcompanhar\3a j_id141_body > div.form20px.clear.lHeight18px > div:nth-child(1) > table > tbody > tr > td:nth-child(2) > select > option:nth-child(4)').select_option
    end


end