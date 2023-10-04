# Lokale moduler

Moduler er en sentral del av Terraform. Det kan brukes på litt forskjellige måter. I dette tilfellet skal vi bruke det til å opprette en prod og en test-variant av funksjonen vår.

Dere finner en mappe "template" som inneholder en modul. Skriv modulen så den lager en funksjon tilsvarende den dere lagde i oppgave 3. Dere skal ta inn "environment" som en variabel. Da må dere endre variables.tf og main.tf i miljø-mappene også. function_name kan vi sette i modulens local. Gi funksjonen `name = "${local.function_name}-${var.environment}"` i modulen for å få unike navn.
