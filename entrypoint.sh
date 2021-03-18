#!/bin/sh
# File              : entrypoint.sh
# Author            : Alexandre Saison <alexandre.saison@inarix.com>
# Date              : 18.03.2021
# Last Modified Date: 18.03.2021
# Last Modified By  : Alexandre Saison <alexandre.saison@inarix.com>
set -e
$return_value=$(yarn run test)
echo "values=$return_value"
echo "::set-output name=coverage::$return_value"
