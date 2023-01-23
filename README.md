# APIProject
Sviluppo di un'API che traduce i comandi inviati dalla Terra per elaborazioni numeriche.

## Applicazioni
Ci sono due applicazioni: AppGenerateRoverDatas per inserire i dati e AppCalculateDatas che li elabora. Le due applicazioni  sono sviluppate interamente con il framework Ruby on Rails ed è stata utilizzata la [versione 6.1.7](https://github.com/rails/rails/releases/tag/v6.1.7) per la sua  stabilità (https://rubyonrails.org/2022/9/9/Rails-7-0-4-6-1-7-6-0-6-have-been-released).
+ I DB delle applicazioni sono in [SQLLite3](https://www.sqlite.org/index.html). Su S.O. Windows è consigliato scaricare il DBMS
+ Il FrontEnd delle applicazioni è gestito con il framework [HAML](https://haml.info/)

## Configurazione dei sistemi per avviare le applicazioni
1. Installare Ruby 3.0.0 per Windows
2. Installare il framework [rails-on-node](https://www.npmjs.com/package/rails-on-node/v/1.3.0?activeTab=readme)
3. Installare la gemma [bundler 2.2.3](https://rubygems.org/gems/rails/versions/6.1.7)
4. Installare la gemma [rails 6.1](https://rubygems.org/gems/rails/versions/6.1.7)

## Configurazione delle applicazioni
1. Scaricare il progetto APIProject
2. Andare in /APIProject-main/AppGenerateRoverDatas
3. Avviare il comando per installare le gemme usate
> bundle install

4. Creare il Database ed effettuare la migrazione  con i comandi
> rails db:crearte
> rails db:migrate

5. Andare in /APIProject-main/AppCalculateDatas
6. Avviare il comando per installare le gemme usate
> bundle install

7. Creare il Database ed effettuare la migrazione  con i comandi
> rails db:crearte
> rails db:migrate

## Avvio delle applicazioni
Nella cartella 'config' delll'applicazione AppCalculateDatas c'è il file 'customSetting.json' dove è salvato  l'URL base da  dove viene avviata l'applicazione AppGenerateRoverDatas dove il valore di default è
http://localhost:3000

Dalla cartella APIProject-main/AppGenerateRoverDatas avviare AppGenerateRoverDatas sulla porta 3000 con il comando
> rails s -p 3000

Dalla cartella APIProject-main/AppCalculateDatas avviare AppCalculateDatas ad esempio sulla porta 3020 con il comando
> rails s -p 3020
