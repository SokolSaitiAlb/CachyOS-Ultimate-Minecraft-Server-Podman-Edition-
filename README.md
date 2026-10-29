# CachyOS Ultimate Minecraft Server (Podman Edition)

Konfigurim për një server Minecraft Java/Paper në Podman Compose, me ruajtje të të dhënave në `./data` dhe opsione monitorimi.

## Kërkesat

- CachyOS ose një shpërndarje Linux me Podman dhe `podman-compose`
- OpenSSL për gjenerimin e një sekretit të rastësishëm
- Porti `25565/tcp` i hapur vetëm nëse dëshiron që lojtarët të lidhen nga pajisje të tjera

## Konfigurimi i sigurt

**Mos vendos fjalëkalime në `compose.yaml` ose në Git.** Fjalëkalimi i vjetër RCON u publikua në historikun e këtij projekti. Trajtoje si të komprometuar: vendos një sekret të ri dhe rikrijo kontejnerin. Heqja e tij nga skedari aktual nuk e fshin nga commit-et e vjetra.

1. Krijo konfigurimin lokal dhe kufizo lejet e tij:

   ```bash
   cp .env.example .env
   chmod 600 .env
   ```

2. Gjenero një fjalëkalim të ri:

   ```bash
   openssl rand -hex 32
   ```

   Vendose rezultatin pas `RCON_PASSWORD=` në skedarin lokal `.env`. Mos e vendos vlerën në README, terminal logs, issue apo commit.

3. Nise shërbimin pasi të jetë konfiguruar sekreti:

   ```bash
   ./setup.sh
   ```

   Ose, nëse Podman dhe podman-compose janë instaluar tashmë:

   ```bash
   podman-compose up -d --force-recreate
   ```

RCON publikohet vetëm në `127.0.0.1:25575`; nuk është i arritshëm drejtpërdrejt nga pajisjet e tjera të rrjetit. Porta e lojës është `25565`. Mos e ndrysho lidhjen RCON në `0.0.0.0` ose në publik pa kontroll të firewall-it dhe një nevojë të dokumentuar.

## Operacionet

```bash
podman logs -f cachyos-mc-server
podman ps
```

Të dhënat e serverit ruhen te `./data` dhe përjashtohen nga Git. Bëj kopje rezervë të kësaj direktorie përpara përditësimeve.

## Shënim sigurie

- `.env` është lokal dhe i përjashtuar nga Git; vetëm `.env.example` publikohet.
- Rrotullimi i sekretit kërkon konfigurimin e një vlere të re dhe rikrijimin e kontejnerit.
- Mos ekspozo RCON në internet. Për administrim nga larg, përdor VPN/SSH tunneling në vend të një porte RCON publike.
