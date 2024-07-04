#!/usr/bin/env bash
set -e

./vendor/bin/oe-console oe:admin:create-user --admin-email=max.mustermann@oxid-esales.com --admin-password=oxid7
echo "3/4 DONE: Create admin user"
