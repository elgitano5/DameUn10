<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<body>

<xsl:for-each select="escuela/alumnos/alumno[notas/nota[@asignatura='Matemáticas'] > 9]">

<p>
<xsl:value-of select="nombre"/>
</p>

</xsl:for-each>

</body>
</html>

</xsl:template>
</xsl:stylesheet>