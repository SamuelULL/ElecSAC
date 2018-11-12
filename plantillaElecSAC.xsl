<?xml version='1.0' encoding="ISO-8859-1" ?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<HTML>
			<HEAD>
				<TITLE> ElecSAC | Todo en electrónica e informática</TITLE>
			</HEAD>
			<BODY>
				<H1 ALIGN="CENTER"><xsl:value-of select="//titulo"/></H1>
				<xsl:for-each select="//productos/ordenador/portatiles/marca">
					<H2><xsl:value-of select="nombre"/></H2>
					<xsl:for-each select="modelo">
						<BR/>
						<TABLE>
							<TR>
								<TD><xsl:value-of select="numero"/></TD> 
								<TD><xsl:value-of select="cpu"/></TD> 
								<TD><xsl:value-of select="memoria"/></TD> 
								<TD><xsl:value-of select="pantalla"/></TD> 
								<TD><B><xsl:value-of select="precio"/></B></TD> 
							</TR>
						</TABLE>
					</xsl:for-each>
				</xsl:for-each>
			</BODY>
		</HTML>
	</xsl:template>


 </xsl:stylesheet>
