#!/bin/bash
openssl enc -aes-256-cbc -salt -in "$1" -out "$1.enc" -pass pass:"$2"
