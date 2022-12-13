# APIProject
Sviluppo di un'API che traduce i comandi inviati dalla Terra per elaborazioni numeriche.

## Confiurazione
Inastall Ruby on Rails : https://guides.rubyonrails.org/v5.0/getting_started.html

## Applicazioni
Ci sono due app: AppGenerateRoverDatas per inserire i dati e AppCalculateDatas che li elabora. Le due App sono sviluppate interamente con il framework Ruby on Rails ed è stata utilizzata la [versione 6.1.7](https://github.com/rails/rails/releases/tag/v6.1.7) per la sua  stabilità (https://rubyonrails.org/2022/9/9/Rails-7-0-4-6-1-7-6-0-6-have-been-released).
..* I DB delle App sono in SQLLite3 (https://www.sqlite.org/index.html). Su S.O. Windows è consigliato scarirare il DBML dal link https://www.sqlite.org/2022/sqlite-tools-win32-x86-3400000.zip (scompattare il file ad esempio in C:)

## Fasi
1. Installare Ruby --- scaricare file RubyInstaller (https://www.ruby-lang.org/it/downloads/)
File RubyInstaller per Windows: https://rubyinstaller.org/
2. Installare Ruby on Rails
3. Scaricare il progetto APIProject e scompattarlo
4. Da terminale collocarsi nella cartella /APIProject
5. Andare in /APIProject/AppGenerateRoverDatas e avviare il comando per installare le gemme usate
> bundle install

6. Andare in /APIProject/AppGenerateRoverDatas e creare il Database con il comando
> rails db:crearte

7. Migrare le tabelle con il comando
> rails db:migrate

8. Andare in /APIProject/AppCalculateDatas e avviare il comando per installare le gemme usate
> bundle install

9. Andare in /APIProject/AppCalculateDatas e creare il Database con il comando
> rails db:crearte

10. Migrare le tabelle con il comando
> rails db:migrate

Nella cartella 'config' delll'App AppCalculateDatas c'è il file 'customSetting.json' dove è salvato  l'endpoint di dove viene avviata l'App AppGenerateRoverDatas dove il valore di default è
> http://localhost:3000/api/v1/rovers

Il valore è possibile cambiarlo con un'altra porta ad esempio 3020 o 3075

Dalla cartella APIProject-main/AppGenerateRoverDatas avviare AppGenerateRoverDatas con il comando
> rails s -p 3000

Dalla cartella APIProject-main/AppCalculateDatas aviare AppCalculateDatas avviare con il comando
> rails s -p 3020
