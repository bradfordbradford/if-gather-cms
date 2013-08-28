<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<!-- WHAT IF Comments -->
<xsl:template name="get-what-if-comments">

    <xsl:choose>
        <xsl:when test="what-if-comments/error">
            <!-- <p>There are no comments made so far.</p> -->
        </xsl:when>
        <xsl:otherwise>
            <xsl:apply-templates select="what-if-comments/entry" mode="list-comments"/>
        </xsl:otherwise>
    </xsl:choose>


</xsl:template>

<xsl:template match="entry" mode="list-comments">
    <hr/>
    <p><xsl:apply-templates select="comment" mode="html"/></p>
    <cite><xsl:value-of select="name"/></cite>
    <div class='addthis_toolbox addthis_default_style'>
    <a class='addthis_button_tweet' href=''></a>
    </div>
</xsl:template>

<xsl:template match="error" mode="error">
    <p>There are no comments made so far.</p>
</xsl:template>


</xsl:stylesheet>
