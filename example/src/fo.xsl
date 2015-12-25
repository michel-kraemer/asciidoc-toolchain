<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0"
  version="1.0">

  <!-- import FO stylesheet -->
  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>

  <!-- set paper size to A4 -->
  <xsl:param name="paper.type">A4</xsl:param>

  <!-- enable numbering on sections -->
  <xsl:param name="section.autolabel">1</xsl:param>

  <!-- do not generate a table of contents -->
  <xsl:param name="generate.toc">nop</xsl:param>

</xsl:stylesheet>
