#!/usr/bin/env bash
set -e

# bootstrap oxid files/project
if [ ! -f /var/www/html/source/config.inc.php ]; then
  COMPOSER_MEMORY_LIMIT=-1 composer create-project --keep-vcs oxid-esales/oxideshop-project . ${OXID_VERSION}
  ./vendor/bin/oe-console oe:setup:shop --db-host=oxid7_mysql --db-port=3306 --db-name=${MYSQL_DATABASE} --db-user=${MYSQL_USER} --db-password=${MYSQL_PASSWORD} --shop-url=http://${DOMAIN} --shop-directory=/var/www/html/source --compile-directory=/var/www/html/source/tmp --language=de
  chown -R www-data:www-data /var/www/html/source/
  echo "1/4 DONE: Create oxid project"
fi
