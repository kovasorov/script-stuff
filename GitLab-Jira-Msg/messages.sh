#!/usr/bin/env bash

JIRA_USER=$1
JIRA_PASSW=$2
JIRA_URL=$3
JIRA_MESSG=$4

curl -kD- \
    -u $JIRA_USER:$JIRA_PASSW \
    -H "Content-Type: application/json" \
    -X POST \
    --data '{"body": "'"$JIRA_MESSG"'"}' \
    $JIRA_URL/issue/$CI_BUILD_REF_NAME/comment
