# Docker OXID eShop 6

This (linux/osx) setup bootstraps an dockerized developer environment for [OXID eShop 7](https://docs.oxid-esales.com/developer/en/7.1/).

## Overview

- Apache 2.4 container PHP 8.2 ([Dockerfile](container/apache/Dockerfile))
- MySQL 8.0 container ([Dockerfile](https://github.com/docker-library/mysql/blob/master/8.0/Dockerfile.debian))
- MailHog container ([Dockerfile](https://github.com/mailhog/MailHog/blob/master/Dockerfile))
- phpMyAdmin container ([Dockerfile](https://hub.docker.com/r/phpmyadmin/phpmyadmin/~/dockerfile/))
- OXID eShop ([latest 7.1](https://github.com/OXID-eSales/oxideshop_metapackage_ce/blob/b-7.1/composer.json))
- OXID demo data

## Quickstart
1. Install [docker engine](https://docs.docker.com/engine/installation/)
2. Add `127.0.0.1 oxid7.localhost` to your etc/hosts file (if needed eg. windows)
3. Fire up container
```bash
# clone repository:
git clone https://github.com/proudcommerce/docker-oxid7.git docker_oxid7
cd docker_oxid7
# create container
docker-compose build
# fire up container
docker-compose up
```
## Configuration

### Installation
- Creating oxid project takes round about 5 minutes. It´s finished when docker log shows `INSTALLATION DONE!`).
- Shop: `http://oxid7.localhost` (or `https://oxid7.localhost` with ssl-cert-snakeoil)
- Shop admin `http://oxid7.localhost/admin/`, credentials: `admin / admin`
- MailHog: `http://oxid7.localhost:8025`
- phpMyAdmin: `http://oxid7.localhost:8080`

### Admin credentials
- User: `max.mustermann@oxid-esales.com`
- Password: `oxid7`

### Container
- If you would like to run container in background, use `docker-compose up -d` for starting container and `docker logs -f oxid7_apache` for log information (eg. composer information).

### Data
- Data (`www` and `mysql`) is storend on host: `data` directory

### Credentials
- You can change all credentials (domain, ports, database, ...) in `.env` file.

### OXID demo data
- Will be installed automatically.

## Support

[https://forum.oxid-esales.com/t/docker-container-fur-oxid-6/92282](https://forum.oxid-esales.com/t/docker-container-fur-oxid-6/92282)

## License

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
    

## Copyright

	Proud Commerce GmbH | 2024 | proudcommerce.com
