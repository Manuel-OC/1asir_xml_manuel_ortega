<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Ejercicio 6</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Producto</th>
                        <th>Edificio</th>
                        <th>Peso</th>
                    </tr>
                    <xsl:for-each select="inventario/producto">
                        <xsl:if test="peso &lt; 7000">
                        <xsl:if test="lugar/@edificio = 'A'">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="lugar/aula"/></td>
                            <td><xsl:value-of select="peso"/></td>
                        </tr>
                        </xsl:if>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>   
</xsl:stylesheet>