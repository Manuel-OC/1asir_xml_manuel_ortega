<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <xsl:for-each select="catalogo/cd[artista='Camilo Sesto']">
            <xsl:value-of select="titulo" />
            <xsl:value-of select="artista" />
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>