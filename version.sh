#!/bin/bash

# Find all kustomization.yaml files in the apps/ directory
files=$(find apps/ -name "kustomization.yaml")

# Prepare header
header="# 🔩 Tooling\n\n"
header+="|      Tools       | Version | Repo | Status |\n"
header+="| :--------------: | :-----: | :---: | :------: |"

# Initialize output_content as an empty string
output_content=""

# Loop through each file
for file in $files; do
    # Get the name, version, and repo from the kustomization.yaml file using yq
    name=$(yq eval '.helmCharts[0].name' "$file")
    version=$(yq eval '.helmCharts[0].version' "$file")
    repo=$(yq eval '.helmCharts[0].repo' "$file")

    # Check if both name and version are not null
    if [ "$name" != "null" ] && [ "$version" != "null" ]; then
        # Check if repo is null
        if [ "$repo" != "null" ]; then
            # Append the name, version, repo, and deployed status to output_content
            output_content+="| $name | $version | $repo |   ✅     |\n"
        else
            # Append the name, version, and deployed status without repo to output_content
            output_content+="| $name | $version |    -    |   ✅     |\n"
        fi
    fi
done

# Sort the output content and remove duplicates
output_content=$(echo -e "$output_content" | sort -u -k 2)

# Write the sorted output content to TOOLING.md, ensuring the header is at the top
echo -e "$header" > TOOLING.md
echo -e "$output_content" >> TOOLING.md
