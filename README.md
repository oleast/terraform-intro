# morro-med-terraform

## Oppsett

Vi starter med å installere gcloud og terraform.

```bash
brew install terraform
brew install google-cloud-sdk --cask
```

Deretter setter vi opp gcloud med `gcloud init` og velger riktig prosjekt. som er `bekk-oppdrift`. Kjør deretter `gcloud auth application-default login` for å authorisere maskinen din så den kan kjøre terraform-kommandoer seinere i oppgavene. Vi kan også sette default region med `gcloud config set run/region europe-west1`.

Hurra! Da kan vi gå videre til oppgave 1.
