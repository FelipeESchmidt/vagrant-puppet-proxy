## Serviços Utilizados:
### Servidor: 

O servidor utilizado nesta box foi o Apache (apache2), pois, ele é o servidor mais popular
e também é muito confiável. O apache é utilizado por gigantes como Netflix, Airbnb, eRay,
Microsoft entre outros. Esse servidor atende às solicitações de acesso de conteúdo de 
vários usuários.

![apache](https://ubiq.co/tech-blog/wp-content/uploads/2020/07/increase-request-timeout-apache.png)

### Linguagem de provisionamento:

A linguagem de provisionamento utilizada foi a Puppet, e foi escolhida pois é a mais 
utilizada e desta maneira é mais fácil de encontrar documentação. Fazendo com que seja 
mais fácil encontrar e resolver problemas que possam ocorrer.

![puppet](https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Puppet_transparent_logo.svg/2560px-Puppet_transparent_logo.svg.png)

### Serviço provisionado: 

O serviço utilizado neste server proxy foi o Squid, pois o uso do mesmo como Proxy/Cache 
é uma das opções mais utilizadas em ambientes corporativos que adotam software livre para 
administrar a rede, seja atráves da otimização e melhoria do desmpenho da rede atuando 
como servidor de cache ou como proxy, implementando restrições de acesso à internet, que 
nem sempre é possível ser feita por firewall.

![squid](https://www.arduinoecia.com.br/wp-content/uploads/2020/02/squid-logo-png.png) 

## Pré-Requisitos do Linux

```bash
sudo apt update
sudo apt-get update
```

#### VirtualBox instalado

```bash
sudo apt-get install -y virtualbox
```

#### Vagrant instalado

```bash
sudo apt-get install -y vagrant
```

#### Puppet instalado

```bash
sudo apt-get install -y puppet
```

## Rodando a box

***!! Certifique-se que não há nenhuma box com o nome (__serverProxy__) na máquina !!***

Para rodar o arquivo Vagrantfile basta acessar a pasta com os arquivos e rodar o seguinte
comando

```vagrant
vagrant up
```

## Site

Após o comando vagrant up, um site será disponibilizado no IP: [192.168.60.58](http://192.168.60.58) na porta 80 (HTTP).

![site_gif](https://user-images.githubusercontent.com/50564212/165188971-ecceabbf-6574-4918-a962-a290b4d8934f.gif)

## Utilizando o servidor proxy

O proxy pode ter várias aplicabilidades, tais quais como bloquear sites por horário, 
bloquear URLs específicas, controlar o limite de banda entre outros.

Você pode encontrar algumas funções nos seguintes links:

* [Autenticação de usuários](https://gist.github.com/jackblk/fdac4c744ddf2a0533278a38888f3caf)
* [Bloqueio de palavras](https://www.vivaolinux.com.br/topico/Squid-Iptables/Bloqueando-palavras-squid)
* [Bloqueio de uma faixa de IP](https://under-linux.org/showthread.php?t=83897)
* [Bloqueio de uma porta](https://www.cyberciti.biz/faq/linux-unix-squid-proxy-filtering-particular-port/)
* [Bloqueio por horário](https://www.vivaolinux.com.br/dica/SQUID-Liberando-Internet-por-horario)
* [Limitação de banda](https://www.vivaolinux.com.br/dica/Squid-Implementando-controle-de-banda)

Como exemplo bloqueamos o acesso de URLs e para testar o serviço você terá que configurar o seu navegador para utilizar o proxy da box que foi criada. Para isso, siga os passos a seguir:

* Encontre o menu de configurações do seu navegador
* Busque por configurações avançadas
* Busque pela opção para configurar o proxy
* Busque pela opção de configuração manual do proxy
* Adicione o seguinte IP como endereço do proxy - [192.168.60.58]()
* Adicione a seguinte porta como porta do serviço - [3128]()

## Testando o proxy

Para testar se o proxy está funcionando basta tentar acessar algum dos sites listados abaixo

#### URLs bloqueadas pelo proxy
- [google.com](https://google.com)
- [bing.com](https://bing.com)
- [yahoo.com](https://yahoo.com)
- [duckduckgo.com](https://duckduckgo.com)
- [ask.com](https://ask.com)
- [aol.com](https://aol.com)
- [searchencrypt.com](https://searchencrypt.com)
- [msn.com](https://msn.com)
- [wolframalpha.com](https://wolframalpha.com)
- [nationmaster.com](https://nationmaster.com)

## Autores

- [@Felipe Schmidt](https://www.github.com/FelipeESchmidt)
- [@Gabriel Walker](https://github.com/GabrielMWalker)
- [@Luis Gustavo Tabile](https://github.com/LuisTabile)

## Repositório

- [___Github___](https://github.com/FelipeESchmidt/vagrant-puppet-proxy)