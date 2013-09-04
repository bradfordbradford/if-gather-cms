<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="item" mode="tags-commas">
    <li>
        <a href="{$root}/equip/{@handle}">
            <xsl:value-of select="."/>
        </a>
    </li>
    <xsl:if test="position() != last()">
        <xsl:text>, </xsl:text>
    </xsl:if>
</xsl:template>

<xsl:template match="option" mode="tags-list">
    <li>
        <a href="{$root}/equip/{@handle}">
            <xsl:value-of select="."/>
        </a>
    </li>
</xsl:template>

</xsl:stylesheet>
