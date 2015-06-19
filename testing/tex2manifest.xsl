<?xml version="1.0" encoding="utf-8"?>
<!--
/=====================================================================\ 
|  tex2manifest.xsl                                                   |
|  Generates a Firefox OS webapp manifest file                        |
|=====================================================================|
| not yet Part of LaTeXML: http://dlmf.nist.gov/LaTeXML/              |
|=====================================================================|
| Lukas Kohlhase                                              #_#     |
| Public domain software                                     (o o)    |
\=========================================================ooo==U==ooo=/
-->
<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ltx="http://dlmf.nist.gov/LaTeXML"  version="1.0" exclude-result-prefixes="ltx">
<xsl:output method="text" indent="yes" omit-xml-declaration="yes"/>
 <xsl:template match="/">
 {
    "version": "1",
    "name": "<xsl:value-of select="/ltx:document/ltx:title"/>",
    "launch_path": "/example.html", <!-- TODO pass the filename as a variable and then put this here -->
    "description": "A LaTeX document that was transformed into a webapp by LaTeXML",
    "icons": {
        "128": "/asdf.png" <!-- TODO make nicer icon -->
    },
    "developer": {
        "name": "<xsl:value-of select="//ltx:creator[@role='author']/ltx:personname"/>"
    },
    "installs_allowed_from": ["*"],
    "default_locale": "en"
}
</xsl:template>
<!-- This does nothing so far --> 
</xsl:stylesheet>
