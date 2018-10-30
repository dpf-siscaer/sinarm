#language: pt

@req_registro 

Funcionalidade: Requerimento de Registro

Contexto: Sistema Logado
Dado que eu estou logado como "toledo.rct" e 'ctidpf'

@requerimento_registro
Cenario: Realizar o Requerimento de Registro no SINARM

Dado que estou na pagina de Requerimento de Registro
Quando quando preencho o formulario 