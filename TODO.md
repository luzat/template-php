# Initial configuration

* Move `.env.sample` to `.env` and adjust settings.
* Replace `htdocs/info.php` by project files.
* If desired, create SSL certificate and copy certificate to
`httpd/server.crt` and private key to `httpd/server.key`.
* Place database initialization scripts in `mysql/initdb.d/*.{sh,sql,sql.gz}`.
* Adjust `{httpd,mysql,php}/conf.d/` as required.
* Adjust `docker-compose.yml` as required:
  * ports
  * uncomment certificate mounts
  * MySQL version
* Adjust PHP version in `php/Dockerfile`
* Possibly add an alias to `/etc/hosts`: `127.0.0.1 www.example.com example.com`
* Run `docker-compose up`. The site should now be reachable under the configured host name (`.env`/`/etc/hosts`) or `localhost`, MySQL at port 3306 and mailcatcher's web interface at port 1080. Check `docker-compose` output for errors (such as conflicting ports).
* Remove `.git/` and run `git init`.
* Remove this file.
* Consider running `git commit -a -m "Initial commit"`.
