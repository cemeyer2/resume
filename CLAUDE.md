# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a LaTeX resume/CV repository for Charlie Meyer. The main resume is written in LaTeX using the Friggeri CV template, which uses XeLaTeX for compilation and requires special handling for bibliography compilation with biber.

## Build Commands

- **Compile the resume**: `./compile.sh`
  - This script handles the full compilation process including bibliography
  - Runs xelatex and biber multiple times to resolve all references
  - Generates both `cv_10.pdf` and copies it to `resume.pdf` and `cem_resume.pdf`
  - Automatically cleans up temporary files

- **Manual compilation**: `xelatex cv_10 && biber cv_10 && xelatex cv_10 && xelatex cv_10`
  - Use if you need to compile manually without the script

## File Structure

- `cv_10.tex` - Main LaTeX source file for the resume
- `friggeri-cv.cls` - LaTeX class file for the Friggeri CV template
- `bibliography.bib` - Bibliography file containing publications and references
- `compile.sh` - Build script that handles compilation and cleanup
- `xits-math/` - Font directory for mathematical symbols

## Requirements

- XeLaTeX (required for font handling and compilation)
- biber (required for bibliography processing, not bibtex)
- Helvetica Neue font (used by the template)

## Template Features

- Uses TikZ for the header design
- Employs XeTeX and fontspec for Helvetica Neue font usage
- Bibliography handled by biblatex with biber backend
- Color scheme inspired by Monokai (includes print option for black/white)
- Uses textpos for sidebar positioning

## Output Files

The build process generates:
- `cv_10.pdf` - Primary output
- `resume.pdf` - Copy of the main CV
- `cem_resume.pdf` - Personal copy