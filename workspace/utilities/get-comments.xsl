<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:addthis="url/here">

<!-- WHAT IF Comments -->
<xsl:template name="get-what-if-comments">

    <xsl:choose>
        <xsl:when test="what-if-comments/error">
            <p>There are no comments made so far.</p>
        </xsl:when>
        <xsl:otherwise>
            <xsl:apply-templates select="what-if-comments/entry" mode="list-comments"/>
        </xsl:otherwise>
    </xsl:choose>


</xsl:template>


<xsl:template match="entry" mode="list-comments">
    <li>
        <blockquote>
            <xsl:value-of select="comment" mode="html"/>

            <hr/>

            <cite>
                <xsl:value-of select="name"/>
            </cite>

            <xsl:element name="div">
                <xsl:attribute name="addthis:title">
                    <xsl:value-of select="comment" mode="html"/> <xsl:text> #ifgathering</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="class">addthis_toolbox addthis_default_style</xsl:attribute>


                <xsl:attribute name="addthis:url">
                    <xsl:text>ifgathering.com</xsl:text>
                </xsl:attribute>

                <xsl:element name="a">
                    <xsl:attribute name="class">addthis_button_tweet</xsl:attribute>
                    <xsl:attribute name="href"></xsl:attribute>

                </xsl:element>
            </xsl:element>
        </blockquote>
    </li>
</xsl:template>

<xsl:template match="error" mode="error">
    <p>There are no comments made so far.</p>
</xsl:template>


</xsl:stylesheet>
