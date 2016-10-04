Repo Info
=========
Builds and configures a working [DNSDIST] DNS load-balancer image.

Usage
-----
Specify your downstream DNS servers at launch time:
```
docker run -d -p 53:53 -p 53:53/udp \
  -e DNS_BACKENDS="10.0.101.101 10.0.101.102" mrlesmithjr/dnsdist
```

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- [everythingshouldbevirtual.com]
- [mrlesmithjr@gmail.com]


[DNSDIST]: <http://dnsdist.org/>
[Docker]: <https://www.docker.com>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
