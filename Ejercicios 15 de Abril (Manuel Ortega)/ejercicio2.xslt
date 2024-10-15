<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Ejercicio 2</h2>
    <ul>
      <xsl:for-each select="inventario/producto">
      <xsl:if test="lugar/@edificio = 'B'">
      <li>
        Elemento <xsl:value-of select="@codigo" />
        <li>Nombre: <xsl:value-of select="nombre" /></li>
        <li>Peso: <xsl:value-of select="peso" /><xsl:value-of select="peso/@unidad" /></li>
      </li>
      </xsl:if>
      </xsl:for-each>
    </ul>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>