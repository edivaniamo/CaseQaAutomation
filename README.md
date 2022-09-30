# Case QA Automation
    Testes realizados no site "AutomationPratice" referente ao Desafio 1, para oportunidade de uma futura vaga na empresa BEES.


## Estrutura para as funcionalidades com arquivos separados para Tests / Steps / Page / Elements. ##

# Tests:
    Contém cenários em formato Gherkin para servir como documentação aos P.O´s e demais StackHolders.
# Steps: 
    Recebe os cenários Gherkin e divide em passos para que ordenem a ação para os métodos serem acionados.
# Page: 
    É acionada através dos Steps para determinada ação seja executada como "Clicar no botão = Click Button" são as chamadas "Keywords" do RobotFramework.
# Elements:
    São os elementos mapeados e/ou a massa para cada testes efetuado através dos cenários. Isso facilita a manutenção separando para um local somente servir como repositório.

# Comando para executar e instalar dependencias com o arquivo requirements.txt
    pip install -r requirements.txt