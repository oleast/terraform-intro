# Terraform

Nå skal vi gå løs på terraform!

## Provider

Først av alt må vi sette opp en provider. Siden vi skal jobbe med google så bruker vi en google provider.

Legg til provideren i toppen av `main.tf` som [her](https://registry.terraform.io/providers/hashicorp/google/latest/docs#example-usage). Husk riktig region.

kjør `terraform init` fra mappen main.tf ligger i for å laste ned provideren.

## Kjør opp containeren!

Ok, vi kaster oss ut på litt dypt vann her.
Kort fortalt, sett opp en tilsvarende tjeneste, denne gangen via terraform.
Du finner lenken til dokumentasjonen her: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_v2_service

Finn ut hva slags ressurs dere vil lage og putt den i main.tf.

Før du setter i gang:

- For å "teste" det du har laget kan du kjøre `terraform plan`. Med `terraform apply` (husk `yes`når den spør) så deployer du faktisk greiene dine. Ikke slett innholdet i denne fila etterpå, bruk en annen eller behold innholdet og skriv under. Det er viktig at vi har en oversikt over hva som er gjort mot slutten så vi får sletta ting.
- Det er ikke bare-bare å få autentiseringa slått av. Det tar vi i neste oppgave.
- Dere får ikke sette 0,5 CPU og 128Mi minne. Prøv, se hva dere får av feilmeldinger og juster til laveste lovlige verdi.
- Det kan være du støter på en påloggingsgreie fra gcloud her. I så fall bare følg instruksjonene i terminalen.

## Skru av Autentisering

I consolen kunne vi bare trykke på en knapp så gjorde den en del ting for oss bak kulissene. I terraform er det ofte ikke like enkelt, her må vi styre ting litt mer selv. Husker dere hvor utrolig gøy det var å drive med tilgangskontroll for Lambda? Vel, nå skal vi gjøre det samme for Cloud Run! Wohoo! Men jeg skal gjøre det litt lett for dere. Bare sjekk om variablene stemmer under.

```hcl
data "google_iam_policy" "noauth" {
  binding {
    role    = "roles/run.invoker"
    members = ["allUsers"]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location = google_cloud_run_v2_service.this.location
  project  = google_cloud_run_v2_service.this.project
  service  = google_cloud_run_v2_service.this.name

  policy_data = data.google_iam_policy.noauth.policy_data
}
```

HURRA!
