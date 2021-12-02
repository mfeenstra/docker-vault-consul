#!/bin/sh
tail -f vault/logs/audit.log  | jq '.'
