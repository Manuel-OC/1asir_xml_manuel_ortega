<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
    <h2>Ejercicio 3 a)</h2>
    <ul>
        <xsl:for-each select="alumnos/alumno">
            <xsl:sort select="localidad" />
                <li>
                    <li>
                        Localidad: <xsl:value-of select="localidad" />
                        Nombre: <xsl:value-of select="nombre" /> <xsl:value-of select="apellido1" /> <xsl:value-of select="apellido2" />
                    </li>
                </li>
        </xsl:for-each>
    </ul>
    <h2>Ejercicio 3 b)</h2>
    <ul>
        <xsl:for-each select="alumnos/alumno">
            <xsl:sort select="nombre" />
            <xsl:sort select="apellido1" />
            <xsl:sort select="apellido2" />
            <xsl:if test="localidad = 'Jerez'">
                <li>
                    <li>
                        Localidad: <xsl:value-of select="localidad" />
                        Nombre: <xsl:value-of select="nombre" /> <xsl:value-of select="apellido1" /> <xsl:value-of select="apellido2" />
                    </li>
                </li>
            </xsl:if >
        </xsl:for-each>
    </ul>
    <h2>Ejercicio 3 c)</h2>
    <ul>
        <xsl:for-each select="alumnos/alumno">
            <xsl:sort select="localidad" />
            <xsl:sort select="apellido1" />
            <xsl:sort select="apellido2" />
                <li>
                    <li>
                        Localidad: <xsl:value-of select="localidad" />
                        Nombre: <xsl:value-of select="nombre" /> <xsl:value-of select="apellido1" /> <xsl:value-of select="apellido2" />
                    </li>
                </li>
        </xsl:for-each>
    </ul>
    <h2>Ejercicio 3 d)</h2>
    <table border="1">
        <tr bgcolor="#9acd32">
            <th style="text-align:left">Ciudad</th>
            <th style="text-align:left">Nombre</th>
        </tr>
        <xsl:for-each select="alumnos/alumno">
            <tr>
                <td><xsl:value-of select="localidad"/></td>
                <td><xsl:value-of select="nombre"/></td>
            </tr>
        </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>