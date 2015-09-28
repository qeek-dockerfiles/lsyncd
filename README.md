lsyncd
----

## Run

Assumption that the ssh configure is ok for you. Just add private key to docker instance for rsync over ssh use.

```
docker run -d -v /var/www/html:/var/www/html \
  -v ~/dockerws/lsyncd/lsyncd.conf:/usr/local/lsyncd-2.1.5/etc/lsyncd.conf \
  -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
  peihsinsu/lsyncd /usr/local/lsyncd-2.1.5/bin/lsyncd -nodaemon -log Exec /usr/local/lsyncd-2.1.5/etc/lsyncd.conf
```
