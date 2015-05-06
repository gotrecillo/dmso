<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
	<head>
		<link rel="stylesheet" type="text/css" href="../styles/characters.css"/>
		<meta charset="UTF-8"/>
	</head>
	<body>
		<xsl:for-each select="/monsters/monster">
		<xsl:if test="@visible='yes'">
		<div id="center">
			<h1 id="{@id}"><xsl:value-of select="name" /></h1>
			<p><xsl:value-of select="type"/><xsl:text> </xsl:text> <xsl:value-of select="size"/>, <xsl:value-of select="alignement"/></p>
			<hr class="big"/>
			<p><b>Armadura</b>. <xsl:value-of select="ac"/></p>
			<p><b>Puntos de vida</b>. <xsl:value-of select="hp"/> (<xsl:value-of select="hd"/>)</p>
			<p><b>Velocidad</b>. <xsl:value-of select="speed"/></p>
			<hr class="big"/>
			<table>
				<tr>
					<th>FUE</th>
					<th>DES</th>
					<th>CON</th>
					<th>INT</th>
					<th>SAB</th>
					<th>CAR</th>
				</tr>
				<tr>
					<td><xsl:value-of select="str"/> (<xsl:value-of select="format-number(floor((str - 10) div 2), '+#0; -#0')"/>)</td>
					<td><xsl:value-of select="dex"/> (<xsl:value-of select="format-number(floor((dex - 10) div 2), '+#0; -#0')"/>)</td>
					<td><xsl:value-of select="con"/> (<xsl:value-of select="format-number(floor((con - 10) div 2), '+#0; -#0')"/>)</td>
					<td><xsl:value-of select="int"/> (<xsl:value-of select="format-number(floor((/int - 10) div 2), '+#0; -#0')"/>)</td>
					<td><xsl:value-of select="wis"/> (<xsl:value-of select="format-number(floor((wis - 10) div 2), '+#0; -#0')"/>)</td>
					<td><xsl:value-of select="cha"/> (<xsl:value-of select="format-number(floor((cha - 10) div 2), '+#0; -#0')"/>)</td>
				</tr>
			</table>
			<hr class="big" />
			<xsl:for-each select="detail">
				<p><b><xsl:value-of select="@name"/></b>. <xsl:value-of select="text()"/></p>	
			</xsl:for-each>
			<p><b>Desafío</b>. <xsl:value-of select="cr"/> (<xsl:value-of select="xp"/> XP)</p>
			<hr class="big"/>
			<h2>Habilidades</h2>
			<div class="black">
				<xsl:for-each select="ability">
					<p><b><xsl:value-of select="@name"/></b>. <xsl:value-of select="text()"/></p>
				</xsl:for-each>
			</div>
			<h2>Acciones</h2>
			<div class="black">
				<xsl:for-each select="action">
					<p><b><xsl:value-of select="title"/>. </b><i><xsl:value-of select="type"/>: </i><xsl:value-of select="description"/>. Golpe: <xsl:value-of select="hit"/></p>
				</xsl:for-each>
			</div>
			<div class="portrait">
				<img src="{imagePath}"/>
			</div>
			<a href="char_index.html"><img src="../images/char_index.png" id="char_index"/></a>
			</div>
			</xsl:if>
			</xsl:for-each>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>