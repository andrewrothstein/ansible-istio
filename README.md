andrewrothstein.istio
=========
![Build Status](https://github.com/andrewrothstein/ansible-istio/actions/workflows/build.yml/badge.svg)

Installs [istio](https://istio.io/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.istio
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
