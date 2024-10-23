#!/bin/bash

# Ask for the project folder name, or default to 'project'
read -p "Enter the project folder name (default: project): " folder_name
folder_name=${folder_name:-project}  # If no input, use "project" as default

# Create the base project folder
mkdir -p "$folder_name"

# Files at the root level
touch "$folder_name/Makefile"
touch "$folder_name/config.yml"

# bibliography folder
mkdir -p "$folder_name/bibliography"
touch "$folder_name/bibliography/refs.bib"

# drafts folder and subfolders
mkdir -p "$folder_name/drafts/docx"
mkdir -p "$folder_name/drafts/pdf"

# latex folder
mkdir -p "$folder_name/latex"
touch "$folder_name/latex/header.tex"

# markdown folder and files
mkdir -p "$folder_name/markdown"
touch "$folder_name/markdown/01-introduction.md"

# pictures folder
mkdir -p "$folder_name/pictures"

echo "Project structure created successfully in folder '$folder_name'!"
