# Use a imagem base do Grafana
FROM grafana/grafana:latest

 

# Alterar para o usuário root para executar comandos com privilégios
USER root

 

# Crie o diretório e defina as permissões
RUN mkdir -p /var/lib/grafana/ && chown -R grafana:grafana /var/lib/grafana/

 

# Retorne ao usuário não privilegiado
USER grafana