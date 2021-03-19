# File              : entrypoint.sh
# Author            : Alexandre Saison <alexandre.saison@inarix.com>
# Date              : 18.03.2021
# Last Modified Date: 19.03.2021
# Last Modified By  : Alexandre Saison <alexandre.saison@inarix.com>
set -e
yarn install
yarn run test > debug.log
echo "Debug.log =>\n"
cat debug.log
$return_value=`cat debug.log`
echo "::set-output name=coverage::'$return_value'"
