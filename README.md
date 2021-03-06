# kyutech-thesis-template
A LaTeX template (unofficial) for doctoral dissertation or master's thesis of Kyutech.

*Note: This template has been taken from [naist-thesis-tmpl-en](https://github.com/kmiya/naist-thesis-tmpl-en).*


## Requirements
1. Make sure to have [TeX Live v2020 or higher](https://www.tug.org/texlive/). Older versions may show issues while dealing with bibliography.


## Compilation
* **Linux Platform:** Please invoke shell script `sh compile.sh` from the terminal.
* **Windows Platform:** Just double click on `compile.bat` file.
* **Manual Compilation:** Make sure to follow the sequence of commands mentioned below to compile the file-
    ```
    1. pdflatex thesis.tex
    2. biber thesis
    3. pdflatex thesis.tex
    4. pdflatex thesis.tex
    ```

## Issues (or Error Reporting)
Please check [here](https://github.com/ravijo/kyutech-thesis-template/issues) and create issues accordingly.
