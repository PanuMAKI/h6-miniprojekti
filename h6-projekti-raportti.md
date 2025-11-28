## H6 Miniprojekti

**Projektimme idea:**  Laitamme Saltilla esim. koulun verkkosivu/yksinkertainen HTML-sivu kaikille koneille \
Sisällytämme tähän myös Apache -palvelimen asennuksen ja konfiguraation

Käytämme tähän kannettavaa tietokonetta: \
Lenovon V14 Gen 4 \
16GB RAM \
AMD Ryzen 5 7520U with Radeon Graphics (2.80 GHz) \
Linuxina toimii debian-live-13.1.0-amd64-xfce 

Tehtävän aluksi olimme asentaneet Saltin kahdelle virtuaalikoneelle. Ohjeet löytyvät aiemmista tehtävistä https://github.com/OlliLuo/palvelinten-hall/blob/main/h1-viisikko.md ja Tero Karvisen ohjeesta https://terokarvinen.com/install-salt-on-debian-13-trixie/ Toiselle koneista asennettiin salt-master ja toiselle salt-minion. 

*Mitä pitää tehdä:*
```

- base:
  '*':
    - apache
    - website
```

```

apache2:
  pkg.installed

apache2.service:
  service.running:
    - name: apache2
```
```

/var/www/html/index.html:
  file.managed:
    - source: salt://website/files/index.html
    - user: root
    - group: root
    - mode: 644

# Varmistetaan että hakemisto on olemassa
/var/www/html:
  file.directory:
    - user: root
    - group: root
    - mode: 755
```

  Esimerkkisivu:
```

  <!-- /srv/salt/website/files/index.html -->
<!DOCTYPE html>
<html>
<head>
    <title>Koulun Salt-projekti</title>
</head>
<body>
    <h1>Tervetuloa koulun verkkosivulle!</h1>
</body>
</html>
```
