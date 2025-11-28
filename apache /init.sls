apache2:
  pkg.installed

apache2.service:
  service.running:
    - name: apache2
