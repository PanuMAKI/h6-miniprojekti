/var/www/html/index.html:
  file.managed:
    - source: salt://website/files/index.html
    - user: root
    - group: root
    - mode: 644

/var/www/html:
  file.directory:
    - user: root
    - group: root
    - mode: 755
