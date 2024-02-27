<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  <xsl:template match="UnderKeelClearancePlan[@primitive='Surface']" priority="1">
    <areaInstruction>
      <featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>33022</viewingGroup>
      <displayPlane>UNDERRADAR</displayPlane>
      <drawingPriority>12</drawingPriority>
      <colorFill>
        <color transparency="0.5">CHMGD</color>
      </colorFill>
    </areaInstruction>
    <lineInstruction>
      <featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>33022</viewingGroup>
      <displayPlane>UNDERRADAR</displayPlane>
      <drawingPriority>12</drawingPriority>
      <lineStyleReference reference="UKCARE01_20240110"/>
    </lineInstruction>
  </xsl:template>
</xsl:transform>
