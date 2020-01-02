#!/bin/bash

DATE=$(/bin/date)
BODY="Side gate opened at $DATE"


generate_data()
{
	cat <<EOF
	{ 
		"body":"$BODY",
		"title":"Home Security System",
		"type":"note"
	}
EOF
}

curl --header 'Access-Token: o.CleIMPTrIpFBrZvJJSlLIWI5ZCKvapzf' --header 'Content-Type: application/json' --data-binary "$(generate_data)" --request POST    https://api.pushbullet.com/v2/pushes
     
     
echo      
