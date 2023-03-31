# Terraform

Este é um projeto que estou utilizando Terraform e Ansible guiado pelo Curso Alura na trilha de ensinamento Formação DevOps. A primeira ferramenta é utilizada para criar a estrutura em AWS. A segunda cria os comandos que serão executados e permite versionar o código. Isso porque se os comandos fossem feitos apenas no Terraform, ele destruiria a máquina e adicionaria uma nova no lugar, impossibilitando o versionamento. 

| :placard: Vitrine.Dev |     |
| -------------  | --- |
| :sparkles: Nome        | **Terraform**
| :label: Tecnologias | Terraform, Ansible, Python

<!-- Inserir imagem com a #vitrinedev ao final do link -->
![](https://www.opensourcerers.org/wp-content/uploads/2020/10/Ansible-and-Terraform-Integration.png#vitrinedev)

## Detalhes do projeto

O projeto foi realizado com o auxilio do Curso Alura com a trilha de formação DevOps que utiliza o Terraform que, neste caso, foi utilizado para instânciar uma máquina no serviço de núvem AWS. É possível ver toda a infra da máquina no arquivo _main.tf_ . Já o Ansible foi utilizado para fazer todos os comandos necessários após a máquina criada no airflow como:
1. Instalação do python3 e da máquina virtual
2. Instalação das bibliotecas do python - Django e DjangoRest
3. Iniciar o projeto 
4. Alterar o documento dando permissão para qualquer host acessar o servidor iniciado. 
<p> Essa ferramenta permite com que haja versionamento do código, pois, cada vez que insiro um comando novo, ela verifica como estava meu projeto antes, faz mudanças no que já existia, caso necessário, e adiciona o que há de novo. Diferente do Terraform que destrói a máquina existente para upar uma nova.</p>



