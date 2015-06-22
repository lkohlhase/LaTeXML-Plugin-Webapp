# LaTeXML-Plugin-Webapp
This depository is for plugins to allow LaTeXML to generate webapps from LaTeX. 
Steps to make firefox Webapp at the moment: 
1. latexmlc example.tex --destination=example.xml 
2. xsltproc example.xml --output manifest.webapp tex2manifest.xsl example.xml 
3. latexmlc example.tex -destinatin=example.html --format=html
Alternatively use appropriate stylesheet to turn example.xml into example.html (need to check this)
4. Zip up icon.png and example.html and manifest.webapp to create the firefox webapp. (Arbitrary extra files can be added as well without changing the validity). Make sure that manifest.webapp has correct link.
