@echo off
rem compile thesis.tex to produce thesis.pdf and
rem remove temporary files generated during compilation
rem usage: double click or type the below in the command prompt
rem        compile.bat
rem author: Ravi Joshi
rem date: 30 may 2020
rem note: this file is designed for Windows based OS
rem -------------------------------------------------

set dir=%cd%

rem define the main file
set file_name=thesis

rem declare all temporary files
set temp_file_extensions=aux bbl blg log out lof toc bcf run.xml fdb_latexmk fls lot

rem delete the existing file
if exist %file_name%.pdf (
  echo Removing existing %file_name%.pdf. Please wait...
  del /f /q %file_name%.pdf
)

echo Running pdflatex again. Please wait...
pdflatex %file_name%.tex

echo Running biber. Please wait...
biber %file_name%

echo Running pdflatex again. Please wait...
pdflatex %file_name%.tex

echo Running pdflatex again. Please wait...
pdflatex %file_name%.tex

echo Removing temporary files. Please wait...
for %%a in (%temp_file_extensions%) do (
  if exist "%dir%\*.%%a" (
    del /f /q /s "%dir%\*.%%a"
  )
)

echo Finished. Generated file is %file_name%.pdf
