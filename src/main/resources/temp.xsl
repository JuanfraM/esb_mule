<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xsd="http://org.apache.axis2/xsd">

      <!-- Adding CDATA -->
      <xsl:output 	method="application/xml"
      				cdata-section-elements="xsd:request" />
      <xsl:param name="xmlValue" />

      <xsl:template match="/">
            <xsd:getDecision>
              <xsd:request>
                <xsl:value-of select="$xmlValue" />
              </xsd:request>
            </xsd:getDecision>
      </xsl:template>
</xsl:stylesheet>
