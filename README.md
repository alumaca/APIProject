# APIProject
Sviluppo di un'API che traduce i comandi inviati dalla Terra per elaborazioni numeriche.

## Applicazioni
Ci sono due app: AppGenerateRoverDatas per inserire i dati e AppCalculateDatas che li elabora. Le due applicazionisono sviluppate interamente con il framework Ruby on Rails ed è stata utilizzata la [versione 6.1.7](https://github.com/rails/rails/releases/tag/v6.1.7) per la sua  stabilità (https://rubyonrails.org/2022/9/9/Rails-7-0-4-6-1-7-6-0-6-have-been-released).
+ I DB delle applicazionisono in [SQLLite3](https://www.sqlite.org/index.html). Su S.O. Windows è consigliato scarirare il DBML
+ Il FrontEnd delle applicazioniè gestito con il framework [HAML](https://haml.info/)

## Confiurazione
1. Installare Ruby scaricare file RubyInstaller (https://www.ruby-lang.org/it/downloads/)
File RubyInstaller per Windows: https://rubyinstaller.org/
2. Installare il framework [rails-on-node](https://www.npmjs.com/package/rails-on-node/v/1.3.0?activeTab=readme)
3. Installare Ruby on Rails 6.1
4. Installare bundler 2.2.3

## Avvio delle applicazioni
1. Scaricare il progetto APIProject e scompattarlo
2. Da terminale collocarsi nella cartella /APIProject
3. Andare in /APIProject/AppGenerateRoverDatas e avviare il comando per installare le gemme usate
> bundle install

4. Andare in /APIProject/AppGenerateRoverDatas e creare il Database con il comando
> rails db:crearte

5. Migrare le tabelle con il comando
> rails db:migrate

6. Andare in /APIProject/AppCalculateDatas e avviare il comando per installare le gemme usate
> bundle install

7. Andare in /APIProject/AppCalculateDatas e creare il Database con il comando
> rails db:crearte

8. Migrare le tabelle con il comando
> rails db:migrate

Nella cartella 'config' delll'applicazione AppCalculateDatas c'è il file 'customSetting.json' dove è salvato  l'URL base di dove viene avviata l'applicazione AppGenerateRoverDatas dove il valore di default è
> http://localhost:3000

Il valore è possibile cambiarlo.

Dalla cartella APIProject-main/AppGenerateRoverDatas avviare AppGenerateRoverDatas sulla porta 3000 con il comando
> rails s -p 3000

Dalla cartella APIProject-main/AppCalculateDatas aviare AppCalculateDatas avviare ad esempio sulla porta 3020 con il comando
> rails s -p 3020
