<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:character-map name="a">
    <xsl:output-character character="&lt;" string="&lt;"/>
    <xsl:output-character character="&gt;" string="&gt;"/>
</xsl:character-map>

<xsl:output use-character-maps="a"/>

<xsl:template match="@*|node()">
  <xsl:copy>
    <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
</xsl:template>

</xsl:stylesheet>