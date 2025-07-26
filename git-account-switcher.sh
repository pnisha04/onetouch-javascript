#!/bin/bash

# Git Account Switcher Script
# Usage: ./git-account-switcher.sh [tusharpingale04|pnisha04]

set_tusharpingale04() {
    echo "🔄 Setting up repository for tusharpingale04..."
    
    # Set local git config
    git config --local user.name "tusharpingale04"
    git config --local user.email "tusharpingale04@gmail.com"
    
    # Get current remote URL
    current_remote=$(git remote get-url origin)
    
    # Extract repository name
    repo_name=$(echo $current_remote | sed 's/.*[:/]\([^/]*\/[^/]*\)\.git$/\1/')
    
    # Set remote URL for tusharpingale04
    if [[ $repo_name == *"tusharpingale04"* ]]; then
        git remote set-url origin "git@github.com:${repo_name}.git"
    else
        echo "⚠️  Warning: Repository doesn't seem to belong to tusharpingale04"
        echo "Current remote: $current_remote"
        echo "Please manually set the correct remote URL:"
        echo "git remote set-url origin git@github.com:tusharpingale04/your-repo-name.git"
    fi
    
    echo "✅ Repository configured for tusharpingale04"
    git config --local --list | grep user
}

set_pnisha04() {
    echo "🔄 Setting up repository for pnisha04..."
    
    # Set local git config
    git config --local user.name "pnisha04"
    git config --local user.email "nphapale03@gmail.com"
    
    # Get current remote URL
    current_remote=$(git remote get-url origin)
    
    # Extract repository name
    repo_name=$(echo $current_remote | sed 's/.*[:/]\([^/]*\/[^/]*\)\.git$/\1/')
    
    # Set remote URL for pnisha04
    if [[ $repo_name == *"pnisha04"* ]]; then
        git remote set-url origin "git@github-pnisha04:${repo_name}.git"
    else
        echo "⚠️  Warning: Repository doesn't seem to belong to pnisha04"
        echo "Current remote: $current_remote"
        echo "Please manually set the correct remote URL:"
        echo "git remote set-url origin git@github-pnisha04:pnisha04/your-repo-name.git"
    fi
    
    echo "✅ Repository configured for pnisha04"
    git config --local --list | grep user
}

show_current_config() {
    echo "📋 Current repository configuration:"
    echo "Remote URL: $(git remote get-url origin)"
    echo "Git user: $(git config --local user.name 2>/dev/null || echo 'Not set locally')"
    echo "Git email: $(git config --local user.email 2>/dev/null || echo 'Not set locally')"
}

case "$1" in
    "tusharpingale04")
        set_tusharpingale04
        ;;
    "pnisha04")
        set_pnisha04
        ;;
    "status"|"")
        show_current_config
        echo ""
        echo "Usage: $0 [tusharpingale04|pnisha04|status]"
        ;;
    *)
        echo "❌ Unknown account: $1"
        echo "Usage: $0 [tusharpingale04|pnisha04|status]"
        exit 1
        ;;
esac
