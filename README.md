# morro-med-terraform

## Oppsett

Vi starter med å installere gcloud og terraform.
`brew install terraform`
`brew cask install google-cloud-sdk`

Deretter setter vi opp gcloud med `gcloud init` og velger riktig prosjekt. som er `Halvveis-bistro`. Kjør deretter `gcloud auth application-default login` for å authorisere maskinen din så den kan kjøre terraform-kommandoer seinere i oppgavene. Vi kan også sette default region med `gcloud config set run/region europe-west1`.

Hurra! Da kan vi gå videre til oppgave 1.
