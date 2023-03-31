# Terraform

Este é um projeto que estou utilizando Terraform e Ansible guiado pelo Curso Alura na trilha de ensinamento Formação DevOps. A primeira ferramenta é utilizada para criar a estrutura em AWS. A segunda cria os comandos que serão executados e permite versionar o código. Isso porque se os comandos fossem feitos apenas no Terraform, ele destruiria a máquina e adicionaria uma nova no lugar, impossibilitando o versionamento. 
Aqui vamos subir a máquina no console AWS, criar um servidor e deixar tudo pronto para que um Dev que utilize o Django possa realizar seu projeto. 

| :placard: Vitrine.Dev |     |
| -------------  | --- |
| :sparkles: Nome        | **Terraform**
| :label: Tecnologias | Terraform, Ansible, Python

<!-- Inserir imagem com a #vitrinedev ao final do link -->
![](https://www.opensourcerers.org/wp-content/uploads/2020/10/Ansible-and-Terraform-Integration.png#vitrinedev)

## Detalhes do projeto

O projeto foi realizado com o auxilio do Curso Alura com a trilha de formação DevOps que utiliza o Terraform que, neste caso, foi utilizado para instânciar uma máquina no serviço de núvem AWS. É possível ver toda a infra da máquina no arquivo _main.tf_ . Já o Ansible foi utilizado para fazer todos os comandos necessários, que são encontrados no arquivo _playboook.yml_, após a máquina criada no airflow como:
1. Instalação do python3 e da máquina virtual
2. Instalação das bibliotecas do python - Django e DjangoRest
3. Iniciar o projeto 
4. Alterar o documento dando permissão para qualquer host acessar o servidor iniciado. 

Essa ferramenta permite com que haja versionamento do código, pois, cada vez que insiro um comando novo, ela verifica como estava meu projeto antes, faz mudanças no que já existia, caso necessário, e adiciona o que há de novo. Diferente do Terraform que destrói a máquina existente para upar uma nova.
A conexão do Ansible com a máquina instânciada é feita através do arquivo *hosts.yml* onde é passada a categoria criada com o nome de "terraform-ansible" e depois o IP da máquina com a qual o Ansible vai se conectar. Importante lembrar que o IP da sua máquina será diverente o IP deste arquivo.

## Executando o projeto

Primeiro é necessário criar um repositório na sua máquina para armezenar os arquivos, depois disso, coloque os arquivos desse repositório no linux dentro do que você criou.

Para criar a máquina no Console AWS siga o passo a passo esse link do próprio site do [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build) ensinando a criar uma infraestrutura. Porém, se quiser criar uma máquina igual a minha, use o arquivo _main.tf_ que eu criei. 

Depois execute os comandos `terraform init` e depois `terraform apply` no terminal. Provavelmente haverá um erro de chave de acesso. Para resolvê-lo, é necessário ir na máquina criada no Console AWS e criar a ACCESS KEY e a SECRET KEY. Depois disso salvar ambas na mesma pasta do repositório criado onde estão os arquivos do terraform. Usando este [link](https://stackoverflow.com/questions/40852223/is-there-a-way-to-export-an-aws-cli-profile-to-environment-variables) é possível resolver o problema. 

Com a máquina criada, agora é possível rodar o Ansible, para isso execute o comando: 

`playbook-ansible playbook.yml -u ubuntu --private-key nome_do_arquivo_com_as_chaves.pem -i hosts.yml` 

Pronto! Agora está tudo criado! 

Para entrar na sua máquina via terminal utilizando a chave ssh, siga este (link)[https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html] para o passo a passo. 

Uma vez acessada, rode o comando `. ìac/venv/bin/activate` no terminal para ativar o ambiente virtual. 

Agora rode no terminal o comando `cd iac` para acessar a pasta e depois:

`python manage.py runserver 0.0.0.0:8080` 

Pronto, ativou o projeto no servidor na porta 8080. Para visualizá-lo abra o navegador e digite o seu IP:8080. Você verá uma tela parecida com essa:

![](../django.png)

Agora é só começar a desenvolver seu projeto de site com django!

Obs: Caso eu tenha esquecido algum passo, fique a vontade para criar um issue e me avisar! 



