#language: pt

Funcionalidade: Abrir do página do FAQ
	Para poder visualizar as perguntas frequentes
	Como usuário
	Quero acessar a página do faq


  	
  	Cenário: Carregar página de fornecedores
    Ao carregar página de fornecedores, é mostrada uma lista com os fornecedores

	Dado que eu estou na homepage
    Quando eu clico no link "FAQ"
    Entao vejo a lista de perguntas
 
    Cenário: Visualizar resposta de uma pergunta
    Ao selecionar uma pergunta, é mostrada a resposta para essa pergunta

	Dado que eu estou na homepage
 	Quando eu clico no link "FAQ"
    E eu clico na primeira pergunta 
    Entao vejo sua resposta
