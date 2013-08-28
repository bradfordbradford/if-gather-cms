<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name='prev-next'>

    <xsl:apply-templates select="unleash-story-nextentry/entry[@id != $ds-unleash-stories][1]" mode="next-entry"/>

    <xsl:apply-templates select="unleash-story-preventry/entry[@id != $ds-unleash-stories and position() = 1]" mode="prev-entry"/>


</xsl:template>

    <xsl:template match="entry" mode="next-entry">

        <a href="{$root}/unleash-story/{header/@handle}">
            Next (<xsl:value-of select="@id"/>)
        </a>
    </xsl:template>

    <xsl:template match="entry" mode="prev-entry">

        <a href="{$root}/unleash-story/{header/@handle}">
            Prev (<xsl:value-of select="@id"/>)
        </a>
    </xsl:template>

</xsl:stylesheet>