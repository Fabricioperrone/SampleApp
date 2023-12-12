*** Settings ***
Documentation    Essa suite testa o site da sampleapp.tricentis.com
Resource         Site_SampleApp_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

Passo 1: Acessar o site e preencher os formulários"
    [Documentation]    Esse teste verfica o formulários 
    ...                Enter Vehicle Data
    ...                Enter Insurant 
    ...                Enter Product 
    ...                Select Price Caption
    ...                Send Quote
  Preencha os campos obrigatórios com os detalhes da marca do veículo.
  Preencha os campos obrigatórios com os detalhes da quilometragem do veículo.
  Preencha os campos obrigatórios com os detalhes da data de farbicação do veículo.
  Preencha os campos obrigatórios com os detalhes quantidade de assentos do veículo.
  Preencha os campos obrigatórios com os detalhes do tipo de do veículo.
  Preencha os campos obrigatórios com os detalhes do preço de tabeça do combustível.
  Preencha os campos obrigatórios com os detalhes número de matrícula.
  Preencha os campos obrigatórios com os detalhes da quilometragem anual.

Na aba "Enter Insurant Data
    Na aba "Enter Insurant Data", Preencha os campos obrigatórios com os dados do segurado primeiro nome.
    Preencha os campos obrigatórios com os dados do segurado sobrenome.
    Preencha os campos obrigatórios com os dados do segurado data de aniverário.
    Preencha os campos obrigatórios com os dados do segurado genero.
    Preencha os campos obrigatórios com os dados do segurado endereço.
    Preencha os campos obrigatórios com os dados do segurado cep.
    Preencha os campos obrigatórios com os dados do segurado cidade.
    Preencha os campos obrigatórios com os dados do segurado ocupação.
    Preencha os campos obrigatórios com os dados do segurado hobbies.
    Preencha os campos obrigatórios com os dados do segurado website.
    Preencha os campos obrigatórios com os dados do segurado upload foto.

# Na aba "Enter Product Data"
#     Na aba "Enter Product Data" Preencha os campos obrigatórios com os detalhes do produto data de início.
    # Clique no botão "Next".

# Na aba "Select Price Option"
#     Escolha a opção de preço desejada.
#     Clique no botão "Next".

# Na aba "Send Quote"
#     Preencha os campos necessários para enviar a cotação.
#     Clique no botão "Send".


