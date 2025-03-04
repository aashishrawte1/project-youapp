#!/bin/bash

# Parent repository URL
parent_repo_url="https://github.com/aashishrawte1/project-youapp.git"

# Child repository URLs
backend_repo_url="https://github.com/aashishrawte1/youapp-backend.git"
frontend_repo_url="https://github.com/aashishrawte1/youapp-frontend.git"

# Function to clone or pull a repository
clone_or_pull_repo() {
    local repo_url="$1"
    local repo_dir="$2"

    if [ -d "$repo_dir" ]; then
        echo "Repository $repo_dir already exists. Pulling latest changes..."
        cd "$repo_dir" || exit
        git pull origin main
        cd ..
    else
        echo "Cloning repository $repo_dir..."
        git clone "$repo_url" "$repo_dir"
    fi
}

# Clone parent repository
 git clone "$parent_repo_url" project-youapp
 cd project-youapp || exit

# Clone or pull backend repository
clone_or_pull_repo "$backend_repo_url" youapp-backend

# Clone or pull frontend repository
clone_or_pull_repo "$frontend_repo_url" youapp-frontend

# cd ..
