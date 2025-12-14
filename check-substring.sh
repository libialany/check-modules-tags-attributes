#!/bin/sh
grep -r --include="*.tfvars" --include="*.tf" "tag*" "$(pwd)"
