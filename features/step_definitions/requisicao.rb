Dado("que eu estou logado como {string} e {string}") do |usuario, senha|
    visit 'https://projetoshom.dpf.gov.br/siseg/index.php'
    @login = Login.new
    @login.logar usuario, senha
    @requisicao = Requisicao.new
   end
  
  Quando("eu estou no formulario requisicao") do
      visit 'https://servicoshom.dpf.gov.br/sinarm-internet/faces/publico/incluirReqAquisicaoArmaFogo/incluirReqAquisicaoArmaFogo.seam'
      #tipo_solicitacao = 'CIDADÃO'
      #@requisicao.preencher_cadastro_tipo tipo_solicitacao
      pessoa = 'Murilo Guilherme Danilo Bernardes'
      pessoa_mae = 'Rayssa Isabelly'
      pessoa_pai = 'Noah Bento Lucas Bernardes'
      pessoa_nascimento = '09041988'
      pessoa_cpf = '08344033152'
      pessoa_rg = '501368371'
      pessoa_orgao = "SSP"
      pessoa_rg_data = '15052007'
      pessoa_rg_uf = 'df'
      pessoa_estado_civil = 'Solteiro'
      pessoa_profissao = 'PROMOTOR PÚBLICO'
      pessoa_sexo ='Masculino'
      @requisicao.identificacao pessoa, pessoa_mae, pessoa_pai, pessoa_nascimento 
      @requisicao.documentacao_cpf pessoa_cpf
      pais = "brasil"
      uf = 'df'
      cidades = 'brasília'
      cep = '72405904'
      lugar = 'SH Lote 03'
      lugar_uf = 'df'
      tipo_residencia = 'Residencial'
      numero = '913'
      bairro = 'Setor Central (Gama)'
      cidade = 'brasília'
      dd = '61'
      celular = '985809392'
      @requisicao.pais_nascimento_interessado pais, uf, cidades
      @requisicao.documentacao_rg pessoa_rg, pessoa_orgao, pessoa_rg_data, pessoa_rg_uf
      @requisicao.dados_complementares pessoa_estado_civil, pessoa_profissao, pessoa_sexo

      @requisicao.dados_endereco cep, lugar, lugar_uf
      @requisicao.opcao_residencia tipo_residencia, numero, bairro, cidade
      @requisicao.informar_telefone_celular dd, celular
      @requisicao.avancar

     arma = 'Pistola'  
     mmm = '.380'    
      @requisicao.escolher_armamento arma, mmm
      @requisicao.avancar
      porque = "Proteção"
      @requisicao.observacoes_arma porque
      @requisicao.avancar
      uf_final = 'df'
      cidade_final = 'brasília'
      local_final = 'SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF'

      @requisicao.finalizar_cadastro  uf_final,  cidade_final, local_final
      @requisicao.codigo
      sleep(5)
      @requisicao.emitir

   end