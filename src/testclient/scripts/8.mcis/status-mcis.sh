#!/bin/bash

#function status_mcis() {

echo "####################################################################"
echo "## 8. VM: Status MCIS"
echo "####################################################################"

source ../init.sh

# if [ "${INDEX}" == "0" ]; then
# 	MCISID=${MCISPREFIX}-${POSTFIX}
# else
# 	MCISID=${CONN_CONFIG[$INDEX,$REGION]}-${POSTFIX}
# fi

echo "${MCISID}"

ControlCmd=status
curl -H "${AUTH}" -sX GET http://$TumblebugServer/tumblebug/ns/$NSID/mcis/${MCISID}?action=${ControlCmd} | jq ''

#HTTP_CODE=$(curl -o /dev/null -w "%{http_code}\n" -H "${AUTH}" "http://${TumblebugServer}/tumblebug/ns/$NSID/mcis/${MCISID}?action=status" --silent)
#echo "Status: $HTTP_CODE"

#}

#status_mcis
