#!/bin/bash

# Find all kustomization.yaml files in the apps/ directory
files=$(find apps/ -name "kustomization.yaml")

# Prepare header
header="# 🔩 Tooling\n\n"
header+="|      Tool        | Version | Repo | base | ops | dev | prd |\n"
header+="| :--------------: | :-----: | :---:| :--: | :-: | :-: | :-: |"

# Loop through each file
for file in $files; do
    # Get the name, version, and repo from the kustomization.yaml file using yq
    name=$(yq eval '.helmCharts[0].name' "$file")
    version=$(yq eval '.helmCharts[0].version' "$file")
    repo=$(yq eval '.helmCharts[0].repo' "$file")

    # Initialize variables ops, dev, and prd without ✅
    base=""
    ops=""
    dev=""
    prd=""

    # Determine if ✅ should be added based on folder name
    folder_name=$(dirname "$file")
    if [[ "$folder_name" == *"base"* ]]; then
        base="✅"
    fi    
    if [[ "$folder_name" == *"ops"* ]]; then
        ops="✅"
    fi
    if [[ "$folder_name" == *"dev"* ]]; then
        dev="✅"
    fi
    if [[ "$folder_name" == *"prd"* ]]; then
        prd="✅"
    fi

    # Check if both name and version are not null
    if [ "$name" != "null" ] && [ "$version" != "null" ]; then
        # Check if repo is null
        if [ "$repo" != "null" ]; then
            # Append the name, version, repo, and deployed status to output_content
            output_content+="| $name | $version | $repo | $base | $ops | $dev | $prd |\n"
        else
            # Append the name, version, and deployed status without repo to output_content
            output_content+="| $name | $version |    -    | $base | $ops | $dev | $prd |\n"
        fi
    fi
done

# Write the sorted output content to TOOLING.md, ensuring the header is at the top
echo -e "$header" > TOOLING.md
echo -e "$output_content" >> TOOLING.md
