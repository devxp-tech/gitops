#!/bin/bash

# Find all kustomization.yaml files in the apps/ directory
files=$(find apps -name "kustomization.yaml")

# Prepare header
header="# 🔩 Tooling\n\n"
header+="|  App |  Chart | Version | Repo | base | ops | dev | prd |\n"
header+="| :--: | :-----:| :-----: | :---:| :--: | :-: | :-: | :-: |"

# Initialize output_content as an empty string
output_content=""

# Loop through each file and construct the output content
for file in $files; do
    # Get the name, version, and repo from the kustomization.yaml file using yq
    name=$(yq eval '.helmCharts[0].name' "$file")
    version=$(yq eval '.helmCharts[0].version' "$file")
    repo=$(yq eval '.helmCharts[0].repo' "$file")

    # Initialize variables base, ops, dev, and prd without ✅
    base=""
    ops=""
    dev=""
    prd=""

    # Determine the app name from the folder structure
    app=$(echo "$file" | cut -d "/" -f 2)

    # Determine if ✅ should be added based on folder name
    folder_name=$(dirname "$file")
    if [[ "$folder_name" == *"base"* ]]; then
        base="✅"
    fi    
    if [[ "$folder_name" == *"ops"* ]]; then
        ops="[![App Status](https://argocd.devxp-tech.io/api/badge?name=$app-ops&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/$app-ops)"
    fi
    if [[ "$folder_name" == *"dev"* ]]; then
        dev="[![App Status](https://argocd.devxp-tech.io/api/badge?name=$app-dev&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/$app-dev)"
    fi
    if [[ "$folder_name" == *"prd"* ]]; then
        prd="[![App Status](https://argocd.devxp-tech.io/api/badge?name=$app-prd&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/$app-prd)"
    fi

    # Check if both name and version are not null
    if [ "$name" != "null" ] && [ "$version" != "null" ]; then
        # Check if repo is null
        if [ "$repo" != "null" ]; then
            # Append the name, version, repo, and deployed status to output_content
            output_content+="| $app | $name | $version | $repo | $base | $ops | $dev | $prd |\n"
        else
            # Append the name, version, and deployed status without repo to output_content
            output_content+="| $app | $name | $version |    -    | $base | $ops | $dev | $prd |\n"
        fi
    fi
done

output_content=$(echo -e "$output_content" | sort -u -k 2 | awk NF)

# Sort the output content (excluding the header) and write to TOOLING.md
echo -e "$header" > docs/tooling/versions.md
echo -e "$output_content" >> docs/tooling/versions.md
