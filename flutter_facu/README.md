# Documentação : Aplicativo de Viagens

## Descrição
Este é um aplicativo de viagens construído com Flutter. Ele apresenta uma lista de destinos de viagem, uma tela de contatos e uma tela "Sobre".

## Estrutura do Código
O aplicativo é composto por várias classes e arquivos:

### main.dart
Este é o ponto de entrada do aplicativo. Ele define a classe MyApp, que é um widget sem estado. MyApp define uma lista de telas (BodyContent, Contatos e Sobre) e constrói um MaterialApp com um DefaultTabController.

### BodyContent.dart
Este arquivo define a classe BodyContent, que é um widget sem estado. BodyContent recebe uma lista de objetos Travel e constrói uma lista de destinos de viagem.

### Contatos.dart
Este arquivo define a classe Contatos, que é um widget sem estado. Contatos constrói uma tela de contatos.

### Sobre.dart
Este arquivo define a classe Sobre, que é um widget sem estado. Sobre constrói uma tela "Sobre".

## Funcionalidades
O aplicativo tem três abas principais:

1. **Destinos**: Esta aba mostra uma lista de destinos de viagem. Cada destino tem uma imagem, um título, um subtítulo e uma descrição.
2. **Contatos**: Esta aba mostra uma tela de contatos.
3. **Sobre**: Esta aba mostra uma tela "Sobre".

## Como executar
Para executar este aplicativo, você precisa ter o Flutter e o Dart configurados em seu ambiente. Depois de configurar, você pode executar o aplicativo com o comando `flutter run` no terminal.

## Futuras melhorias
- Adicionar funcionalidade para adicionar e remover destinos de viagem.
- Adicionar funcionalidade para adicionar e remover contatos.
- Melhorar a tela "Sobre" com mais informações sobre o aplicativo e o desenvolvedor.