# APIProject
Sviluppo di un'API che traduce i comandi inviati dalla Terra in istruzioni comprensibili per un rover

## Confiurazione
Inastall Ruby on Rails : https://guides.rubyonrails.org/v5.0/getting_started.html

## Applicazioni
Ci sono due app: AppGenerateRoverDatas per inserire i dati e AppCalculateDatas che elabora i dati

## Fasi
1. Installare Ruby
2. Installare Ruby on Rails
3. Scaricare il progetto APIProject e scompattarlo
4. Da terminale collocarsi nella cartella /APIProject
5. Andare in /APIProject/AppGenerateRoverDatas e creare il Database con il comando
> rails db:crearte

6. Migrare le tabelle con il comando
> rails db:migrate

7. Andare in /APIProject/AppCalculateDatas e creare il Database con il comando
> rails db:crearte

8. Migrare le tabelle con il comando
> rails db:migrate

Nella cartella 'config' delll'App AppCalculateDatas c'è il file 'customSetting.json' dove è salvato  l'endpoint di dove viene avviata l'App AppGenerateRoverDatas dove il valore di default è
> http://localhost:3000/api/v1/rovers

Il valore è possibile cambiarlo con un'altra porta ad esempio 3020 o ...

Dalla cartella APIProject/AppGenerateRoverDatas avviare AppGenerateRoverDatas con il comando
> rails s -p 3000

Dalla cartella APIProject/AppCalculateDatas aviare AppCalculateDatas avviare con il comando
> rails s -p 3020
