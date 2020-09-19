# Download
Download de arquivos usando Thread, Observer, MVC e SQLite em Delphi. O executável e o Banco estão em uma pasta chamada: Executavel.

## Thread
Classe TTask que roda uma thread, o que não bloqueiaa thread principal, no caso de manipulação de controles visuais usei o Synchronize para que não trave a Thread principal

## Download
Componente TIdHTTP da indy que ussa o http request. Em conjunto, utilizei o TIdSSLIOHandlerSocketOpenSSL para adicionar o protocolo https. Por si só o TIdHTTP congela a thread principal durante o processo, sendo então usado o TIdAntiFreeze da propria indy

## MVC
Está dividido em Model, View e Controller seguindo as boas práticas onde cada camada se comunica via camada sem a view conhecer o model ou vice versa

## Padrões de Projetos
Utilizado o Observer para notificar a View quando o download terminar, também usei o Adapter para criar os Controllers.

## SQLite
Para armazenar o histórico de downloads utilizo o SQLite, o banco está no diretório do Executável dentro de uma pasta chamada: DataBase
