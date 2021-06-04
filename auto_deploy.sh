#!/bin/sh

## A script which builds site with hugo
## and deploys it to github pages

############ Checking required argument - commit message
message="$1"
if [ -z "$1" ]; then
    echo "Please provide a commit message as first argument!"
    exit 1
fi

############ Creating latest build
PUBLIC_DIR="./public/"
if [ -d "$PUBLIC_DIR" ]; then
  echo "Removing previous build..."
  rm -rf "$PUBLIC_DIR"
fi

echo "Building the site with Hugo..."
hugo


############ Getting GitHub Pages repo
PAGES_REPO="../NikhilP99.github.io/"
HUGO_REPO="../blog-hugo-cactus/"
REPO_URL="git@github.com:NikhilP99/NikhilP99.github.io.git"
if [ ! -d "$PAGES_REPO" ]; then
  echo "GitHub Pages repository not found."
  echo "Cloning the repository...."
  git clone "$REPO_URL" "$PAGES_REPO"
fi

############ Updating with latest build
echo "Removing previous build from GitHub Pages repository...."
cd "$PAGES_REPO"
git rm -rf .
git clean -fxd
cd "$HUGO_REPO"

echo "Copying new build into GitHub Pages repository..."
cp -r ./public/* "$PAGES_REPO"

############ Publishing changes
changes="$(git status --porcelain)"
if [ -z "$changes" ]; then
  echo "No changes detected!"
  exit 1
else
  echo "Commiting changes in blog-hugo-cactus...."
  git add .
  git commit -m "$message"
  git push origin main
fi

echo "Commiting changes in NikhilP99.github.io...."
cd "$PAGES_REPO"
git add .
git commit -m "$message"
git push origin master

echo "Published!"
