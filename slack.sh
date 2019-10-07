#!/bin/bash

if [ "$2" == "Information"  ]
then
  color=#2F66A9
elif [ "$2" == "Warning" ]
then
  color=#F4C900
elif [ "$2" == "Average" ]
then
  color=#EF820D
elif [ "$2" == "High" ]
then
  color=#CC5500
elif [ "$2" == "Disaster" ]
then
  color=#CC0202
elif [ "$2" == "Resolved" ]
then
  color=#008F11
else
  color=#A19C9C
fi

json='{"attachments": [{ "color":"%s","pretext":"%s","title":"%s","text":"%s"}]}'

payload=$(printf "$json" "$color" "$1" "$2" "$3")

curl -X POST -H 'Content-type: application/json' --data "$payload"  https://hooks.slack.com/services/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
