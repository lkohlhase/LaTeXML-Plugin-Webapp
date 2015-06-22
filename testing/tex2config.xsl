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
<xsl:output method="xml" indent="yes"/>
<xsl:param name="content" select="'example.xml'"/>
<xsl:template match="/">
	<widget xmlns       = "http://www.w3.org/ns/widgets">
   		<name>
   			<xsl:value-of select="ltx:document/ltx:title">
   			</xsl:value-of>
   		</name>
   		<description>
   			A LaTeX file converted to a widget using LaTeXML and the Webapp plugin
   		</description>
   		<author>
   			<xsl:value-of select="//ltx:creator[@role='author']/ltx:personname"/><!-- TODO check if this works for more than just trivial stuff -->
   		</author>
   		<content src="{$content}"/>
   		<!-- TODO make icon and put in standard URL -->
   		<!-- TODO pass variables and make content -->
   		<!-- TODO check if we need a license, I don't think so -->
  	</widget>
</xsl:template>
</xsl:stylesheet>
