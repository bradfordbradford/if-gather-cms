<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="entry" mode="get-page-header">

    <header class="page-header">
        <h2>
            <xsl:apply-templates select="header" mode="html"/>
        </h2>
        <hr class="dotted"/>

        <p>
            <xsl:if test="$current-page = 'what-if'">
                <xsl:attribute name="class">brackets med</xsl:attribute>
            </xsl:if>
            <xsl:if test="($current-page = 'unleash') or ($current-page = 'unleash')">
                <xsl:attribute name="class">brackets med</xsl:attribute>
            </xsl:if>
            <xsl:value-of select="description"/>
        </p>
    </header>

</xsl:template>

</xsl:stylesheet>