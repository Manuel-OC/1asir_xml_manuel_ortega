<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Ejercicio 1 a)</h2>
                <ul>
                    <xsl:for-each select="liga/equipo/jugador">
                        <xsl:if test="./@extranjero">
                        <li>
                            <li>Nombre: <xsl:value-of select="nombre" /></li>
                        </li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
                <h2>Ejercicio 1 b)</h2>
                <ul>
                    <xsl:for-each select="liga/equipo/jugador">
                        <xsl:if test="./edad > 25">
                            <li>
                                <li>Nombre: <xsl:value-of select="nombre" /></li>
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
                <h2>Ejercicio 1 c)</h2>
                <ul>
                    <xsl:for-each select="liga/equipo/jugador[position()=1]">
                        <li>
                           <li>Nombre: <xsl:value-of select="nombre" /></li>
                        </li>
                    </xsl:for-each>
                </ul>
                <h2>Ejercicio 1 d)</h2>
                <ul>
                    <xsl:for-each select="liga/equipo[@nombre = 'FC Barcelona']">
                        <xsl:if test="./jugador/edad > 25">
                            <li>
                                <li>Nombre: <xsl:value-of select="jugador/nombre" /></li>
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
                <h2>Ejercicio 1 e)</h2>
                <ul>
                    <xsl:for-each select="liga/equipo/jugador">
                        <xsl:if test="./posicion = 'Delantero'">
                            <li>
                                <li>Patrocinador: <xsl:value-of select="patrocinador/@marca" /></li>
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
                <h2>Ejercicio 1 f)</h2>
                <ul>
                    <xsl:for-each select="liga/equipo[@nombre = 'Real Madrid']/jugador[@extranjero = 'si']">
                        <li>
                            <li>Nombre: <xsl:value-of select="nombre" /></li>
                         </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>