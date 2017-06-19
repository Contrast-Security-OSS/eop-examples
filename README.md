# eop-examples

An Ansible playbook to install Contrast Security TeamServer on different Operating Systems with built in SSL examples and setup.

## Requirements


Installation will depend on your host operating system.

On a Mac, all dependencies can be installed using homebrew
* Ansible 2.2.1
* vagrant
* VirtualBox

This project expects an installer and license that have been downloaded from [Contrast Hub](https://hub.contrastsecurity.com).  

Optionally, this can download an installer artifact from S3.


## Variables

Using the group_vars folder, there is a file named `all` where variables can be configured for your desired setup.  

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

## Example Configurations
Omitting the following variables in the examples below.  
```
contrast_license: ~/Downloads/contrast-12-31-2017.lic
contrast_installer_local: "~/Downloads/Contrast-3.4.0.517.sh"
contrast_installer_s3: False
eop_version: 3.4.0
```

#### Download and Start WebGoat
If you would like to download and run WebGoat, set this to `True` in `group_vars/all`.

`webgoat: True`

`$ vagrant up eop-webgoat-standalone`

HTTP: http://localhost:8580

#### NGINX Reverse Proxy with Ubuntu 14.04
```
run_install: True
apache_reverse: False
nginx_reverse: True
do_ssl: True
ssl_dir: /opt/ssl
```

Run the following command.
`$ vagrant up eop-ubuntu1404`

Open a Browser and Test:
* HTTP: http://localhost:8180
* HTTPS: https://localhost:8143


#### NGINX Reverse Proxy with Ubuntu 16.04
```
run_install: True
apache_reverse: False
nginx_reverse: True
do_ssl: True
ssl_dir: /opt/ssl
```

Run the following command.
`$ vagrant up eop-ubuntu1604`

Open a Browser and Test:
* HTTP: http://localhost:8280
* HTTPS: https://localhost:8243


#### Apache2 Reverse Proxy with Ubuntu 16.04
```
run_install: True
apache_reverse: True
nginx_reverse: False
do_ssl: True
ssl_dir: /opt/ssl
```

Run the following command.
`$ vagrant up eop-ubuntu1604`

Open a Browser and Test:
* HTTP: http://localhost:8280
* HTTPS: https://localhost:8243

#### Additional Configurations
A list of available Operating Systems can be viewed by running `vagrant status` from the root of this project.


## License


MIT

## Author Information

David Hafley
