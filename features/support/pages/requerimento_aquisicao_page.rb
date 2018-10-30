class Requerimento < SitePrism::Page
 
    # Preenchendo Formulario 
    def preencher_formulario
        find(:xpath,'//*[@id="j_id36:j_id54"]/div/input').click
        find(:xpath,'//*[@id="j_id36:j_id54"]/div/input').set '27073350105'
        find(:xpath,'//*[@id="j_id36:j_id80"]/div/input').click
        find(:xpath,'//*[@id="j_id36:j_id80"]/div/input').set '201810291317075414'
        page.execute_script('alert("Digite o texto do Captcha\nEm seguida clique em PESQUISAR")')
        sleep 10
        page.accept_alert
        find(:xpath, '//*[@id="j_id36:captcha"]').click
        sleep 10
        click_button 'Pesquisar'
        sleep 20
    
    end
    # Clicando em Prosseguir
    def prosseguir
        click_button 'Próxima'
    end
   # Preenchendo Dados da Arma
    def dados_arma(num_serie, modelo, num_nf, cnpj_rev, dt_nf)

        find(:css, '#formGeral\:j_id507 > div:nth-child(1) > div:nth-child(1) > input:nth-child(2)').set num_serie
        find(:css, '#formGeral\:j_id507 > div:nth-child(2) > div:nth-child(1) > select:nth-child(2) > option:nth-child(2330)').click
        find(:css, '#formGeral\:cbModeloArma > div:nth-child(1) > input:nth-child(2)').set modelo
        find(:css, '#formGeral\:cbProdutoArma > div:nth-child(5) > div:nth-child(1) > input:nth-child(2)').set num_nf
        find(:css, '#formGeral\:cbProdutoArma > div:nth-child(6) > div:nth-child(1) > input:nth-child(2)').click
        find(:css, '#formGeral\:cbProdutoArma > div:nth-child(6) > div:nth-child(1) > input:nth-child(2)').set cnpj_rev
        find(:css, '#formGeral\:j_id586InputDate').click
        find(:css, '#formGeral\:j_id586InputDate').set dt_nf
        find(:css, 'div.linha:nth-child(1) > input:nth-child(1)').click
        click_button 'formGeral:j_id639'
        
       

    end

   






end