rm -R -f ./migrations &&
pipenv run init &&
mysql -u metantonio -p -e "DROP DATABASE example;" &&
mysql -u metantonio -p -e "CREATE DATABASE example;" &&
pipenv run migrate &&
pipenv run upgrade