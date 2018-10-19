Quando("eu estou navegando para realizar o registro") do
  @registrar = Registro.new

  janela = window_opened_by do
    @registrar.menu
  end

  within_window janela do
    @registrar.home
    @registrar.verfica
     
   sleep(2)
   janela.close
      
  end
end
  
