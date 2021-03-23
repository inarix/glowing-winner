#!/bin/sh
# File              : entrypoint.sh
# Author            : Alexandre Saison <alexandre.saison@inarix.com>
# Date              : 18.03.2021
# Last Modified Date: 23.03.2021
# Last Modified By  : Alexandre Saison <alexandre.saison@inarix.com>
yarn run test > debug.log
DEBUG="$(cat debug.log | grep -n -C2 -e 'Stmts')"
rm debug.log
echo "DEBUG='$DEBUG'"
DEBUG="${DEBUG//'%'/'%25'}"
DEBUG="${DEBUG//$'\n'/'%0A'}"
DEBUG="${DEBUG//$'\r'/'%0D'}"
echo "::set-output name=coverage::'$DEBUG'"

