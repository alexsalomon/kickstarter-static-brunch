#!/bin/bash

###################################################
## One time set up for deploying to GitHub Pages ##
###################################################

# Remove the public folder, if it exists:
if [ -d "public" ]; then
  rm -rf public
fi

# Create a gh-pages branch:
git branch gh-pages

# Create a new worktree associated with gh-pages in `public/`:
git worktree add public gh-pages

# Clean `public`:
npm run clean

# Install brunch and app dependencies if needed
npm install

# Deploy to newly created gh-pages branch:
# If we don't deploy, the branch will be a copy of master and contain only source files.
npm run deploy

echo "\n\nDone."
