## Locals , data og skyfunksjoner

La oss titte litt på lokale variables i terraform. I samme slengen tar vi en titt innom noe vi har sett på før, bare i AWS. Nemlig skyfunksjoner.

### Locals

Locals er variabler som er tilgjengelige i samme fil man står i i terraform. Som ellers i programmering ønsker vi å erklære variabler på et sted hvis vi bruker de flere ganger. Eller kanskje vi ønsker å samle en del variabler som hører sammen. Da kan vi bruke locals.

## Data

Terraform har både resources og data sources. data sources er gjerne for å kunne referere til noe som allerede eksisterer og vi ønsker å kunne referere til programmatisk.

Under vil du trenge dette. Det finnes en storage bøtte `oppdrift-helloworld` med en fil `index.zip` i. Vi trenger denne under. For å kunne referere til denne kan vi lage oss en data source som peker på denne fila.

Lag en data source for både bøtta og index.zip objektet i bøtta. her er et eksempel til objektet i bøtta, du finner bøtta i menyen over data sources på venstre side i dokumentasjonen.

https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/storage_bucket_object

## Cloud functions

Vi er jo kjent med Lambda, la oss se om vi kan lage oss en liten cloud function å leke med!

Lag en funkjon ved hjelp av URLen under til ressursen.

- Bruk locals til å lagre navnet på funksjonen. Du kan referere til en local `foo` i koden ved hjelp av `local.foo`.
- runtime er `nodejs16`
- `available_memory_mb` er 128
- Husk riktig region
- Bruk eksempel Public Function i dokumentasjonen
- Koden til funksjonen ligger i mappa `helloworld` hvis du skulle trenge den (tror ikke det da).
- entrypoint er `helloHttp`.

https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function

Når alt er deploya, test funksjonen din. Finn den i google cloud console og trykk på de tre prikkene til høyre. Der er det en test knapp.
