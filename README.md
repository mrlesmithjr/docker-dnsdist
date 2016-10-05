Repo Info
=========
Builds and configures a working [DNSDIST] DNS load-balancer image which
integrates with Rancher and dynamically updates the downstream DNS servers using
the `RANCHER_STACK_NAME` and `RANCHER_SERVICE_NAME`.

Usage
-----
Specify your downstream DNS servers at launch time:
```
docker run -d -p 53:53 -p 53:53/udp \
  -e DNS_BACKENDS="10.0.101.101 10.0.101.102" mrlesmithjr/dnsdist
```

```
docker run -d -p 53:53 -p 53:53/udp \
  -e RANCHER_ACCESS_KEY="4561C1544748907EE06A" \
  -e RANCHER_HOST="docker00.etsbv.internal" \
  -e RANCHER_HOST_PORT="8080" \
  -e RANCHER_PROJECT_ID="1a5" \
  -e RANCHER_SECRET_KEY="piSp8Njf5iZ5A7Ks2daWqLTfAS3e2HZktwqmY5oN" \
  -e RANCHER_SERVICE_NAME="pdns-authoritative" \
  -e RANCHER_STACK_NAME="DDI" \
  mrlesmithjr/dnsdist:rancher
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
