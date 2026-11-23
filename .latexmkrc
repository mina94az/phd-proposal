# This proposal uses fontspec and must compile with XeLaTeX.
$pdf_mode = 5;
# LaTeX Workshop's default recipe passes -pdf, overriding pdf_mode.
# Keep that recipe compatible by using XeLaTeX for its PDF engine too.
$pdflatex = 'xelatex %O %S';
