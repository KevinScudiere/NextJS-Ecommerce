# Installazione e configurazione
Dopo aver scaricato `NextJs-Ecommerce-master.zip` ed averlo estratto avviare 2 terminali.

## Avviare la dashboard e lo store
Nella prima console entrare nella cartella `ecommerce-admin` ed eseguire il comando:
```
  npm install
```
Questo comando andrà a scaricare tulle le dependencies contenute nel file `package.json`.

Ora eseguire comando:
```
  npm run dev
```
> [!IMPORTANT]
> L'ecommerce-admin deve stare sulla porta 3000, altrimenti darà problemi con le API.

### Avvio Ecommerce Store
Nella seconda console entrare nella cartella `ecommerce-store` ed eseguire il comando:
```
  npm install
```
Questo comando andrà a scaricare tulle le dependencies contenute nel file `package.json`.

Ora eseguire comando:
```
  npm run dev
```
> [!IMPORTANT]
> L'ecommerce-store deve stare sulla porta 3001, altrimenti darà problemi con le API.

## Avvio Database
Per questo progetto ho usato Xampp, tenendo il database `ecommerce-admin` sulla porta 3006

# Avvio Stripe
[Stripe](https://stripe.com/it) è un API per i pagamenti, questo progetto la usa in `test-mode` per i pagamenti.
Per provare i pagementi Stripe offre delle Carte di Credito/Debito [https://docs.stripe.com/testing](https://docs.stripe.com/testing)
## Installazione Stripe
Stripe richiede [CLI](https://stripe.com/docs/stripe-cli), una volta scaricato ed impostato bisogna aprire 2 console.

## Configurazione Stripe
Nella prima console si dovranno eseguire i seguenti comandi:
```
  stripe login
```
Dovrete fare il login per poi eseguire questo comando:
```
  stripe listen --forward-to localhost:4000/api/webhook
```
Nella seconda console invece si dovrà eseguire:
```
  stripe trigger payment_intent.succeeded
```
Ora `Stripe` è pronto e configurato correttamente e l'E-Commerce dovrebbe funzinare a dovere.

# Gruppo
* Scudiere Kevin (Capogruppo)
* Mora Elias
* Cirillo Lorenzo
* Singh Harkirat

# Modalità di lavoro
Il gruppo ha deciso di assegnare a soltanto 1 membro la scrittura del codice, in questo caso sono stato scelto io, il resto del gruppo ha aiutato nella programmazione, mi aiutato a risolvere eventuali errori ed infine hanno aggiunto i prodotti finali. Ritengo che la suddivisone sia stata abbastanza equilibrata valutando le competenze del gruppo, non ci sono stati elementi del gruppo che non hanno aiutato nello sviluppo dell'Ecommerce.
