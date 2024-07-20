<?xml version="1.0" encoding="utf-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output indent="yes" version="1.0"/>

  <xsl:template name="AreaSimpleColorFillTemplate">
    <xsl:param name="featureReference"></xsl:param>
    <xsl:param name="viewingGroup"/>
    <xsl:param name="displayPlane"/>
    <xsl:param name="drawingPriority"/>
    <xsl:param name="colorToken"/>
    <xsl:param name="transparency"/>
    <xsl:param name="symbolReference"/>
    <xsl:param name="rotation"/>
    <xsl:param name="rotationCRS"/>
    <xsl:param name="scaleFactor"/>
    <xsl:param name="firstSymbolOffsetX"/>
    <xsl:param name="firstSymbolOffsetY"/>
    <xsl:param name="secondSymbolOffsetX"/>
    <xsl:param name="secondSymbolOffsetY"/>
    <xsl:param name="x1"/>
    <xsl:param name="y1"/>
    <xsl:param name="x2"/>
    <xsl:param name="y2"/>
    <xsl:param name="clipSymbols"/>


    <xsl:choose>
      <xsl:when test="$featureReference!=''">
        <xsl:element name="areaInstruction">
          <xsl:element name="featureReference">
            <xsl:value-of select="$featureReference"/>
          </xsl:element>
          <xsl:element name="viewingGroup">
              <xsl:value-of select="$viewingGroup"/>
          </xsl:element>
          <xsl:element name="displayPlane">
            <xsl:value-of select="$displayPlane"/>
          </xsl:element>
          <xsl:element name="drawingPriority">
            <xsl:value-of select="$drawingPriority"/>
          </xsl:element>
          <xsl:element name="colorFill">
            <xsl:element name="color">
              <xsl:attribute name="transparency">
                <xsl:value-of select="$transparency"/>
              </xsl:attribute>
              <xsl:value-of select="$colorToken"/>
            </xsl:element>
          </xsl:element>
          <xsl:element name="symbolFill">
            <xsl:element name="symbol">
              <xsl:attribute name="reference">
                <xsl:value-of select="$symbolReference"/>
              </xsl:attribute>
              <xsl:element name="rotation">
                <xsl:value-of select="$rotation"/>
              </xsl:element>
              <xsl:element name="rotationCRS">
                <xsl:value-of select="$rotationCRS"/>
              </xsl:element>
              <xsl:element name="scaleFactor">
                <xsl:value-of select="$scaleFactor"/>
              </xsl:element>
              <xsl:element name="offset">
                <xsl:element name="x">
                  <xsl:value-of select="$firstSymbolOffsetX"/>  
                </xsl:element>
                <xsl:element name="y">
                  <xsl:value-of select="$firstSymbolOffsetY"/>
                </xsl:element>
              </xsl:element>
            </xsl:element>
            <xsl:element name="v1">
              <xsl:element name="x">
                <xsl:value-of select="$x1"/>
              </xsl:element>
              <xsl:element name="y">
                <xsl:value-of select="$y1"/>
              </xsl:element>
            </xsl:element>
            <xsl:element name="v2">
              <xsl:element name="x">
                <xsl:value-of select="$x2"/>
              </xsl:element>
              <xsl:element name="y">
                <xsl:value-of select="$y2"/>
              </xsl:element>
              <xsl:element name="clipSymbols">
                <xsl:value-of select="$clipSymbols"/>
              </xsl:element>
            </xsl:element>
          </xsl:element>
          <xsl:element name="symbolFill">
            <xsl:element name="symbol">
              <xsl:attribute name="reference">
                <xsl:value-of select="$symbolReference"/>
              </xsl:attribute>
              <xsl:element name="rotation">
                <xsl:value-of select="$rotation"/>
              </xsl:element>
              <xsl:element name="rotationCRS">
                <xsl:value-of select="$rotationCRS"/>
              </xsl:element>
              <xsl:element name="scaleFactor">
                <xsl:value-of select="$scaleFactor"/>
              </xsl:element>
              <xsl:element name="offset">
                <xsl:element name="x">
                  <xsl:value-of select="$secondSymbolOffsetX"/>  
                </xsl:element>
                <xsl:element name="y">
                  <xsl:value-of select="$secondSymbolOffsetY"/>
                </xsl:element>
              </xsl:element>
            </xsl:element>
            <xsl:element name="v1">
              <xsl:element name="x">
                <xsl:value-of select="$x1"/>
              </xsl:element>
              <xsl:element name="y">
                <xsl:value-of select="$y1"/>
              </xsl:element>
            </xsl:element>
            <xsl:element name="v2">
              <xsl:element name="x">
                <xsl:value-of select="$x2"/>
              </xsl:element>
              <xsl:element name="y">
                <xsl:value-of select="$y2"/>
              </xsl:element>
              <xsl:element name="clipSymbols">
                <xsl:value-of select="$clipSymbols"/>
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:element>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:transform>
