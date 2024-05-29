#!/bin/bash

# Find all kustomization.yaml files in the apps/ directory
files=$(find apps/ -name "kustomization.yaml")

# Prepare output content
output_content="|      Tools       | Version | Repo | Status |\n"
output_content+="| :--------------: | :-----: | :---: | :------: |\n"

# Loop through each file
for file in $files; do
    # Get the name, version, and repo from the kustomization.yaml file using yq
    name=$(yq eval '.helmCharts[0].name' $file)
    version=$(yq eval '.helmCharts[0].version' $file)
    repo=$(yq eval '.helmCharts[0].repo' $file)

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

# Sort the output content
output_content=$(echo -e "$output_content" | sort -u -k 2)

# Replace the specific section in Tooling.md with the new content
sed -i '/| *Tools *| *Version *| *Repo *| *Status *|/,$d' Tooling.md
echo -e "$output_content" >> Tooling.md
