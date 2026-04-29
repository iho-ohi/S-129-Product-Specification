<?xml version="1.0" encoding="utf-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  <xsl:template match="UnderKeelClearancePlan" priority="1">
    <nullInstruction>
      <featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>29010</viewingGroup>
      <displayPlane>UNDERRADAR</displayPlane>
      <drawingPriority>0</drawingPriority>
    </nullInstruction>
  </xsl:template>
</xsl:transform>
