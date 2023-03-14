#! /bin/bash
if find apps/ -name '*.yaml' | xargs grep -q "kind: Secret"; then
    echo "Fail, secret found! :("
    exit 1
else
    echo "Success, secret not found! :)"
    exit 0
fi
