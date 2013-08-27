<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="tags.xsl"/>


<!-- Layout for SINGLE POST - Public -->
<xsl:template match="entry" mode="post-public">

	<h2>
        <a href="{$root}/post/{header/@handle}"><xsl:value-of select="header"/></a>
    </h2>
    <h3><xsl:value-of select="sub-header"/></h3>
    <h4>
        <xsl:call-template name="format-date">
            <xsl:with-param name="date" select="date/date/start"/>
            <xsl:with-param name="format" select="'N/d/Y'"/>
        </xsl:call-template>
    </h4>

    <ul>
        <xsl:apply-templates select="tags/item" mode="tags-commas"/>
    </ul>

    <xsl:apply-templates select="article" mode="html"/>

</xsl:template>




<!-- Layout for SINGLE POST - Private -->
<xsl:template match="entry" mode="post-private">

    <h2>
        <a href="{$root}/draft/{header/@handle}"><xsl:value-of select="header"/></a>
    </h2>
    <h3><xsl:value-of select="sub-header"/></h3>
    <h4>
        <xsl:call-template name="format-date">
            <xsl:with-param name="date" select="date/date/start"/>
            <xsl:with-param name="format" select="'N/d/Y'"/>
        </xsl:call-template>
    </h4>
    <ul>
        <xsl:apply-templates select="tags/item" mode="tags-commas"/>
    </ul>

    <xsl:apply-templates select="article" mode="html"/>

</xsl:template>




<!-- Layout for POST LIST - Public List -->
<xsl:template match="*" mode="post-list-public">

    <h2>
        <a href="{$root}/post/{header/@handle}"><xsl:value-of select="header"/></a>
    </h2>
    <h3><xsl:value-of select="sub-header"/></h3>
    <h4>
        <xsl:call-template name="format-date">
            <xsl:with-param name="date" select="date/date/start"/>
            <xsl:with-param name="format" select="'N/d/Y'"/>
        </xsl:call-template>
    </h4>
    <ul>
        <xsl:apply-templates select="tags/item" mode="tags-commas"/>
    </ul>

</xsl:template>




<!-- Layout for POST LIST - Private List -->
<xsl:template match="entry" mode="post-list-private">

    <h2>
        <a href="{$root}/draft/{header/@handle}"><xsl:value-of select="header"/></a>
    </h2>
    <h3><xsl:value-of select="sub-header"/></h3>
    <h4>
        <xsl:call-template name="format-date">
            <xsl:with-param name="date" select="date/date/start"/>
            <xsl:with-param name="format" select="'N/d/Y'"/>
        </xsl:call-template>
    </h4>
    <ul>
        <xsl:apply-templates select="tags/item" mode="tags-commas"/>
    </ul>

</xsl:template>

</xsl:stylesheet>
