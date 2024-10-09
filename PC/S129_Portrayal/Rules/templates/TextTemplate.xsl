<?xml version="1.0" encoding="utf-8" ?>

<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output indent="yes" version="1.0"/>

  <xsl:template name="textTemplate">
    <xsl:param name="featureReference"/>
    <xsl:param name="featureViewingGroup"/>
    <xsl:param name="textViewingGroup" select="21"/>
    <xsl:param name="displayPlane" select="'UnderRadar'"/>
    <xsl:param name="drawingPriority" select="24"/>
    <xsl:param name="text"/>
    <xsl:param name="verticalAlignment" select="'Top'"/>
    <xsl:param name="horizontalAlignment" select="'Center'"/>
    <xsl:param name="bodySize" select="9"/>
    <xsl:param name="token_f" select="'BLK'"/>
    <xsl:param name="transparency_f" select="0"/>
    <xsl:param name="token_b"/>
    <xsl:param name="transparency_b" select="0"/>
    <xsl:param name="serifs" select="'false'"/>
    <xsl:param name="weight" select="'Medium'"/>
    <xsl:param name="slant" select="'Upright'"/>
    <xsl:param name="proportion" select="'Proportional'"/>
    <xsl:param name="offsetX" select="0"/>
    <xsl:param name="offsetY" select="-3.51"/>
    <xsl:param name="rotation" select="0"/>

    <xsl:choose>
      <xsl:when test="$featureReference!=''">
        <xsl:element name="textInstruction">
          <xsl:element name="featureReference">
            <xsl:value-of select="$featureReference"/>
          </xsl:element>
		  <xsl:if test="not($featureViewingGroup = '')">
			  <xsl:element name="viewingGroup">
				<xsl:value-of select="$featureViewingGroup"/>
			  </xsl:element>
		  </xsl:if>
          <xsl:element name="viewingGroup">
            <xsl:value-of select="$textViewingGroup"/>
          </xsl:element>
          <xsl:element name="displayPlane">
            <xsl:value-of select="$displayPlane"/>
          </xsl:element>
          <xsl:element name="drawingPriority">
            <xsl:value-of select="$drawingPriority"/>
          </xsl:element>
          <xsl:element name="textPoint" >
            <xsl:attribute name="verticalAlignment">
              <xsl:value-of select="$verticalAlignment"/>
            </xsl:attribute>
            <xsl:attribute name="horizontalAlignment">
              <xsl:value-of select="$horizontalAlignment"/>
            </xsl:attribute>
              <xsl:element name="element">
                <xsl:element name="text">
                  <xsl:value-of select="$text"/>
                </xsl:element>
                <xsl:element name="bodySize">
                  <xsl:value-of select="$bodySize"/>
                </xsl:element>
                
                <xsl:element name="foreground">
                  <xsl:attribute name="transparency">
                    <xsl:value-of select="$transparency_f"/>
                  </xsl:attribute>
                  <xsl:value-of select="$token_f"/>
                </xsl:element>
				<xsl:if test="not($token_b = '')">
					<xsl:element name="background">
					  <xsl:attribute name="transparency">
						<xsl:value-of select="$transparency_b"/>
					  </xsl:attribute>
					  <xsl:value-of select="$token_b"/>
					</xsl:element>
				</xsl:if>

                <xsl:element name="fontCharacteristics">
                  <xsl:element name="serifs">
                    <xsl:value-of select="$serifs"/>
                  </xsl:element>
                  <xsl:element name="proportion">
                    <xsl:value-of select="$proportion"/>
                  </xsl:element>
                  <xsl:element name="weight">
                    <xsl:value-of select="$weight"/>
                  </xsl:element>
                  <xsl:element name="slant">
                    <xsl:value-of select="$slant"/>
                  </xsl:element>
                </xsl:element>
                
              </xsl:element>
              <xsl:element name="offset">
              <xsl:element name="x">
                <xsl:value-of select="$offsetX"/>
              </xsl:element>
              <xsl:element name="y">
                <xsl:value-of select="$offsetY"/>
              </xsl:element>
            </xsl:element>
              <xsl:element name="rotation">
                <xsl:value-of select="$rotation"/>
              </xsl:element>
              
            </xsl:element>        
            
          </xsl:element>

        
      </xsl:when>
    </xsl:choose>

  </xsl:template>  
</xsl:transform>