  Quando("quando preencho o formulario") do
    visit 'https://servicoshom.dpf.gov.br/sinarm-internet/faces/publico/incluirReqRegistroArmaFogo/consultarRequerimentoRegistro.seam'
    @preencher = Requerimento.new
    @cpf = '32058629108'
    @preencher.preencher_formulario @cpf
    sleep(5)
    #@preencher.preencher_formulario 
    #@preencher.prosseguir
    
    #DADOS ARMA
    num_serie = 'KFP91952'
    modelo = 'PT 58'
    num_nf = '69542'
    cnpj_rev = '92781335000102'
    dt_nf = '13062012'

    #@preencher.dados_arma(num_serie, modelo, num_nf, cnpj_rev, dt_nf)
    #@preencher.prosseguir
    
    
    

  end
