#!/bin/bash

# Find all kustomization.yaml files in the apps/ directory
files=$(find apps/ -name "kustomization.yaml")

# Print the header
echo "|      Tools       | Version | Repo | Status |"
echo "| :--------------: | :-----: | :---: | :------: |"

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
            # Print the name, version, repo, and deployed status
            echo "| $name | $version | $repo |   ✅     |"
        else
            # Print the name, version, and deployed status without repo
            echo "| $name | $version |    -    |   ✅     |"
        fi
    fi
done | sort -u -k 2
