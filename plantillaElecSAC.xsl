<?xml version='1.0' encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML>
<BODY>
	<B>Productos de la tienda</B>
	<BR/>
  <TABLE>
	<xsl:for-each select="Producto/ordenador/portatiles/marca">
		<TR>

			<TD><xsl:value-of select="@nombre"/></TD>
				<xsl:for-each select="modelo">
					<TR>
					<TD><xsl:value-of select="@numero"/></TD>
					<TD><xsl:value-of select="caracteristicas"/></TD>
				</TR>
			</xsl:for-each>
		</TR>
		<TR>--------------------------</TR>
	 </xsl:for-each>
 </TABLE>

</BODY>
</HTML>

</xsl:template>


 </xsl:stylesheet>
