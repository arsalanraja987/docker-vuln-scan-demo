#!/bin/bash

echo "🔍 Searching for outdated base image..."

# Replace old Python version with newer one
sed -i 's|python:3.6-slim|python:3.12-slim|' Dockerfile

echo "✅ Dockerfile updated to use python:3.12-slim"

# Git auto commit (only works in workflows with push permission)
git config --global user.name "AutoFix Bot"
git config --global user.email "autofix@bot.com"
git add Dockerfile
git commit -m "fix: update base image to reduce vulnerabilities"
git push
