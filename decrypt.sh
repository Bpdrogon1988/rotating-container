#!/bin/bash
openssl enc -d -aes-256-cbc -in "$1.enc" -out "$1" -pass pass:"$2"
