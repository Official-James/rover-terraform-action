#!/usr/bin/env bash

alias rover='rover -standalone true'

[ -z "$TF_VAR" ] && rover -tfVar "$TF_VAR"
[ -z "$TF_VAR_FILE" ] && rover -tfVarFile "$TF_VAR_FILE"
[ -z "$GEN_IMAGE" ] && rover -genImage "$GEN_IMAGE"

