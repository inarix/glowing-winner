# File              : entrypoint.sh
# Author            : Alexandre Saison <alexandre.saison@inarix.com>
# Date              : 18.03.2021
# Last Modified Date: 19.03.2021
# Last Modified By  : Alexandre Saison <alexandre.saison@inarix.com>
set -e
yarn run test 1> debug.log
echo "Debug.log"
echo "[BEFORE] DEBUG=nil"
DEBUG=$(cat debug.log |  tail -n +2)
echo "[AFTER] DEBUG=$DEBUG"
echo "::set-output name=coverage::'$DEBUG'"

