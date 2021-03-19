# File              : entrypoint.sh
# Author            : Alexandre Saison <alexandre.saison@inarix.com>
# Date              : 18.03.2021
# Last Modified Date: 19.03.2021
# Last Modified By  : Alexandre Saison <alexandre.saison@inarix.com>
set -e
yarn run test &> debug.log
DEBUG="$(cat debug.log |  tail -n +12)"
echo "DEBUG='$DEBUG'"
DEBUG="${DEBUG//'%'/'%25'}"
DEBUG="${DEBUG//$'\n'/'%0A'}"
DEBUG="${DEBUG//$'\r'/'%0D'}"
echo "::set-output name=coverage::'$DEBUG'"

