#!/bin/sh
# File              : entrypoint.sh
# Author            : Alexandre Saison <alexandre.saison@inarix.com>
# Date              : 25.03.2021
# Last Modified Date: 25.03.2021
# Last Modified By  : Alexandre Saison <alexandre.saison@inarix.com>
yarn run test > debug.log
DEBUG="$(cat debug.log | tail -n +6)"
rm debug.log
echo "DEBUG='$DEBUG'"
DEBUG="${DEBUG//$'\n'/'%0A'}"
echo "::set-output name=coverage::'$DEBUG'"

