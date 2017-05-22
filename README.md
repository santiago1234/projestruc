# Project Structure

Project Structure is a program that creates  a project directory structure for reproduccible research bassed on [Noble 2009](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424).

## Principles

*1. Someone unfamiliar with your project should be able to look at your computer files and understand in detail what you did and why.*

*2. Everything you do, you will probably have to do over again*

## Organization of Project Structure

This is the folder skeleton that will be created after your run `projestruc` and some recomendation of which files you will include in each of the directories.

**data ->** Storing fixed data sets. This is treated as read only; in paricular the scripts should not writte files here. Examples includes tabular files, fastq files or bam files. This directory may spand multiple subdirectories.

**output ->** Storing scripts ouput files. If you are using git you can  ignore all the files in this directory by inlcuding it in .gitignore.

**src ->** Scripts, where you put your script files, this may include python, R, bash, etc.

**runall.py ->** The driver script that carries out the entire experiment automatically. For this I use [luigi python](https://github.com/spotify/luigi) but there are many more options available [ check here](https://github.com/pditommaso/awesome-pipeline).

## What about the documentation?

The documentation may be only a simple README file or also it can be a more depth documentation that includes code, for example, a Rmarkdown file. By deafault `projectstruc` will create the RADME file.




