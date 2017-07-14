eop
=========
A role to install Contrast Security TeamServer on different Operating Systems with built in SSL examples and setup.

Requirements
------------

None

Role Variables
--------------

Use the following variables to configure the paths to you artifacts and whether or not you want automated installation.

```
contrast_license: ~/Downloads/contrast.lic
contrast_installer_local: "~/Downloads/Contrast-3.4.0.517.sh"
contrast_installer_s3: False
eop_version: 3.4.0
run_install: True
apache_reverse: False
nginx_reverse: False
do_ssl: False
ssl_dir: /opt/ssl
webgoat: False
```

Dependencies
------------

None

Example Playbook
----------------

This role is embedded directly into a playbook project within this repot.  
More info can be found in `site.yml` and the repo `README`.

    - hosts: servers
      roles:
         - { role: eop, webgoat: True }

License
-------

MIT

Author Information
------------------
David Hafley
