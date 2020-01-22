# Latex2ipynb
Script to translate LaTeX to notebook form

## Preamble 

I had a set of LaTeX documents for a set of lab sessions that teach Linear Algebra to Computer Science students that
use Python and NumPy.

Last year I started using Jupyter notebooks for these tutorials. I wanted to port the LaTex so in particular any code that 
I have in the LaTeX gets converted into a code cell. Pandoc wasn't quite able to do this so I had to do some adjusting of 
the LaTeX as well to make this transition.

The example LaTeX file shows this - the \cli command creates the necessary backticks for pandoc to parse into a cell. 
The \checkpoint command creates a set of text (typically describing a short task for the student to do) and then an empty cell.

This isn't perfect! For example character like [ and * get a \ before them in the notebook. There isn't any indentation 
of Python code. That said, it does create all the relevant cells which makes life a lot easier.

Runing the script is simply 
./Latex2ipynb.sh \<LaTeX file> \<ipynb file>

Don't put spaces in the file names. 

Finally - right now 22/Jan/2020 Conda runs a version of pandoc (2.2.3.2) that can't port LaTeX to ipynb 
so you will need to change the path to something you've installed independently.   
