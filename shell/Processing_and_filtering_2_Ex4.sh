#!/usr/bin/bash

find ~ -type f -iname "*.txt" -exec sh -c "grep -H -i science {}" \;
