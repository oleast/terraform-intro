# Litt forskjellige måter å kjøre tjenesten vår på

La oss starte med å teste litt metoder å kjøre tjenesten vår på!
Til dette eksempelet skal vi bruke det offentlige imaget `rancher/hello-world`. Det spinner opp et image som kjører på porten 80.

## Kjøre lokalt

Først av alt skal vi prøve å kjøre tjenesten lokalt.
Vi kan gjøre dette ved å kjøre `docker run -it -p <port-på-din-maskin>:80 rancher/hello-world`. Sjekk at det funker som det skal!

## Clickops-heaven

Next up er clickops i GCP!
Først går vi over til et annet image. Rancher funker, men det er jo fint å bruke google sitt eget.
imaget ligger på: us-docker.pkg.dev/cloudrun/container/hello. Få det til å kjøre lokal på din maskin med `docker run`.Legg merke til hva den skriver til consolen, husk at man kan legge ved environment variables med `-e` flagget i docker.

Vi tar i bruk Cloud Run til dette som er GCPs serverless løsning for containere.

Gå til: https://console.cloud.google.com/run?project=bekk-oppdrift
Velg "Create Service" og velg "Deploy one revision from an existing container image". Sørg for å sette følgende verdier, fyll ellers ut det som trengs:

- Samme image som over
- maximum instances 2
- 0.5 vCPU
- 128 MiB Minne
- region europe-west1 (Belgium)

Fyr den opp og test at alt funker som den skal. Du finner en URL på service-siden.

Tøft!

## Neste på lista er cli.

Det kan være ganske praktisk å kjøre en del skykommandoer via cli, Det kan være nyttig i mange automatiserte pipelines, serverless-funksjoner osv. Normalt setter vi opp tjenestene våre IaC, men la oss teste det ut for gøy!

Det er enkelt å sette opp, og vi kan gjøre det med en enkel kommando: `gcloud run deploy --image us-docker.pkg.dev/cloudrun/container/hello --platform managed`. Husk å velge riktig region hvis den spør! Sjekk at det funker som det skal og merk forskjellene på de to tjenestene vi har satt opp. Hvor mye CPU og minne kjører f.eks. tjenesten med?
