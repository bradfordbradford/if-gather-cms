<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- ============ FILTER LISTS ============= -->

    <!-- List of Months/Years -->
    <xsl:template match="year/month[position() &lt;= 6]" mode="month-year-list">
        <li>
            <xsl:if test="entry[substring(date/@iso,1,7) = $filter]">
                <xsl:attribute name="class">active</xsl:attribute>
            </xsl:if>
            <a href="{$root}/{$current-page}/{../@value}-{@value}">

                <xsl:call-template name="format-month">
                    <xsl:with-param name="month" select="@value"/>
                    <xsl:with-param name="format" select="'M'"/>
                </xsl:call-template>
                <xsl:text> </xsl:text><xsl:value-of select="../@value"/>
            </a>

        </li>
    </xsl:template>

    <!-- List of Years -->
    <xsl:template match="year" mode="year-list">
        <li>
            <a href="{$root}/{$current-page}/{@value}">
                <xsl:value-of select="@value"/>
            </a>
        </li>
    </xsl:template>


</xsl:stylesheet>