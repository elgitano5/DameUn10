<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<body>

<table border="1">

<tr>
<th>Nombre</th>
<th>Matemáticas</th>
<th>Historia</th>
<th>Física</th>
</tr>

<xsl:for-each select="escuela/alumnos/alumno">

<tr>

<td><xsl:value-of select="nombre"/></td>

<xsl:for-each select="notas/nota">

<td>

<xsl:value-of select="."/>

<xsl:if test=". &lt; 6">*</xsl:if>

</td>

</xsl:for-each>

</tr>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>