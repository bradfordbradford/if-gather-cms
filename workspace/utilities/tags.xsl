<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="item" mode="tags-commas">
    <span>
        <a href="{$root}/archive/{@handle}">
            <xsl:value-of select="."/>
        </a>
    </span>
    <xsl:if test="position() != last()">
        <xsl:text>, </xsl:text>
    </xsl:if>
</xsl:template>

<xsl:template match="option" mode="tags-list">
    <li>
        <a href="{$root}/archive/{@handle}">
            <xsl:value-of select="."/> (<xsl:value-of select="@count"/>)
        </a>
    </li>

</xsl:template>

</xsl:stylesheet>
