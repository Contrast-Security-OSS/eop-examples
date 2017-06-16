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
```

You cannot set `apache_reverse` and `nginx_reverse` to True at the same time.  Also, if either `*_reverse` vars are `True`, `do_ssl` must also be `True`.
```
apache_reverse: False
nginx_reverse: False
do_ssl: False
ssl_dir: /opt/ssl
```

If you would like to download and run WebGoat, set this to `True`.
```
webgoat: False
```

Dependencies
------------

None

Example Playbook
----------------

This can also be seen in the root directory site.yml.

    - hosts: servers
      roles:
         - { role: eop, webgoat: True }

License
-------

MIT

Author Information
------------------
David Hafley
