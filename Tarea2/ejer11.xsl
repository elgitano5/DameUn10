<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<body>

<table border="1">

<tr>
<th>Nombre</th>
<th>Curso</th>
<th>Nota máxima</th>
</tr>

<xsl:for-each select="escuela/alumnos/alumno">

<tr>

<td><xsl:value-of select="nombre"/></td>

<td><xsl:value-of select="curso"/></td>

<td>
<xsl:value-of select="notas/nota[not(. &lt; ../nota)]"/>
</td>

</tr>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>