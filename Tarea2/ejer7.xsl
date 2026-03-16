<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<body>

<xsl:for-each select="escuela/alumnos/alumno">

<p>
<b><xsl:value-of select="nombre"/></b><br/>

<xsl:for-each select="notas/nota">

<xsl:value-of select="@asignatura"/> -
<xsl:value-of select="."/>

<xsl:if test=". >= 8.5">
 Excelente
</xsl:if>

<br/>

</xsl:for-each>

</p>

</xsl:for-each>

</body>
</html>

</xsl:template>
</xsl:stylesheet>