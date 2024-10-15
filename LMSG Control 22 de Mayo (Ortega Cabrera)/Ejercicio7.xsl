<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <xsl:for-each select="ies/ciclos/ciclo">
        <xsl:if test="@id">
            <xsl:value-of select="nombre"/>
        </xsl:if>
    </xsl:for-each>
    
    <xsl:for-each select="ies/ciclos/ciclo">
        <p><xsl:value-of select="nombre"/></p>
    </xsl:for-each>
    
    <ul>
        <xsl:for-each select="ies/ciclos/ciclo">
            <li>
                <xsl:value-of select="nombre"/>
                (<xsl:value-of select="grado"/>)
            </li>
        </xsl:for-each>
    </ul>
    
    <ul>
        <xsl:for-each select="ies/ciclos/ciclo">
        <xsl:sort select="nombre"/>
            <li>
                <xsl:value-of select="nombre"/>
                (<xsl:value-of select="grado"/>)
            </li>
        </xsl:for-each>
    </ul>
    
    </xsl:template>
</xsl:stylesheet>