# template-php

This is an evolving basic project template for developing PHP based
applications with Docker. It is used for providing a local development
environment. This does work fine on Linux, but probably needs adjustments for
Windows, macOS or other systems (access rights, port and user mappings).

**Please note:** This is mostly used internally, but I am happy if anyone
finds this useful or provides improvements.

## Features

* Web server: Apache httpd
  * uses [luzat/httpd](https://hub.docker.com/r/luzat/httpd/)
  * HTTP/2
  * SSL
* Mailcatcher
  * Mails sent from PHP by default get delivered to mailcatcher, which is
   accessible by browser on port 1080.
* MySQL
* PHP FPM
  * uses [luzat/php](https://hub.docker.com/r/luzat/php/)
* Configurability:
  * `*.conf` taken from `{httpd,mysql,php}/conf.d` (samples in `*/conf.d`))
  * `.env` file (rename and adjust [.env.sample](.env.sample))
* Optional SSL support:
  * requires `server.crt` and `server.key` in `httpd/` 

## Getting started

Code goes into [htdocs/](htdocs/). For database initialization, SQL scripts go
into [mysql/initdb.d/](mysql/initdb.d/). MySQL data is stored in
[mysql/data/](mysql/data/). A few small basic helper scripts are available from
[bin/](bin/).

## See also

* [luzat/docker-httpd](https://github.com/luzat/docker-httpd)
* [luzat/docker-php](https://github.com/luzat/docker-php)

## Author

**Thomas Luzat** - [luzat.com](https://luzat.com/)

## License

This project is licensed under the [ISC License](LICENSE.md).
