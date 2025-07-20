#!/bin/bash
KEYFILE=".cosign.key"
NEW_KEY=$(openssl rand -hex 32)
echo "$NEW_KEY" > "$KEYFILE"
