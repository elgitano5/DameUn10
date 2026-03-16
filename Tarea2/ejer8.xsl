<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<body>

<xsl:for-each select="escuela/alumnos/alumno">

<p>

<xsl:value-of select="nombre"/> -

<xsl:choose>

<xsl:when test="edad &lt; 16">
Estudiante joven
</xsl:when>

<xsl:otherwise>
Estudiante avanzado
</xsl:otherwise>

</xsl:choose>

</p>

</xsl:for-each>

</body>
</html>

</xsl:template>
</xsl:stylesheet>