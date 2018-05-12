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

# Create a new worktree associated with gh-pages in `public/`
git worktree add public gh-pages

# Clean `public`:
npm run clean

# Push empty branch to the remote repository
cd public; git push origin gh-pages; cd ..;

echo "\n\nDone."
