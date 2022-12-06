# Instruções
    - Clonar o repositório
    - vagrant up
    - Copiar comando com o token exibido na configuração da primeira máquina
        - Exemplo: docker swarm join --token <token> 192.168.1.2:2377
    - vagrant ssh controle
    - [NA VM]: Iniciar um serviço no cluster:docker service create --name demo --publish 80:80 nginx
    - [NA VM]: Listar service criado: docker service ls
    - [NA VM]: Listar detalhes do service: docker service ps demo
    - [NA VM]: Escalar o serviço: docker service scale demo=3
    - [NA VM]: Visualizar o serviço distribuído pelo cluster: docker service ps demo
    - 
    - vagrant ssh banco 
    - [NA VM]: Executar o comando copiado 
    - vagrant ssh app
    - [NA VM]: Executar o comando copiado
    - Configuração do ansible (Impossível, ssh não conecta de forma alguma - pular)
    - ----------------------------------------------------------------------------
    - vagrant ssh controle
    - sudo nano /etc/ansible/hosts
    - copie o seguinte conteúdo
        '''
        [servers]
        server1 ansible_host=192.168.1.2
        server2 ansible_host=192.168.1.3
        server3 ansible_host=192.168.1.4

        [all:vars]
        ansible_python_interpreter=/usr/bin/python3
        '''
    - Fazer nas 3 vms:

    - ssh-keygen
    - trocar PasswordAuthentication para yes (TENTEI DOS DOIS JEITOS E NÃO FOI)
    - ssh copy vagrant@ip (TENTEI TAMBÉM MAS NÃO CONECTA DE FORMA ALGUMA)
    - ----------------------------------------------------------------------------
    - Continuar aqui:
      - Verificar prometheus (http://192.168.1.2:9090)
      - Verificar grafana (http://192.168.1.2:3000)
      - Verificar node exporter (http://192.168.1.4:9100/metrics)