<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/base.xsl"/>
<xsl:import href="../utilities/mgmt-post.xsl"/>
<xsl:import href="../utilities/pagination.xsl"/>
<xsl:import href="../utilities/search-bar.xsl"/>

<xsl:output method="xml"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
omit-xml-declaration="yes"
encoding="UTF-8"
indent="yes" />

<xsl:template match="data">

    <div class="row equip-post-list">
        <section class="post-wrap push-7 columns">
            <header class="title">
                <h2>
                    <span class='dart-blk-left ornament'></span>
                    <a href="{$root}/equip">Back to Latest Posts</a>
                </h2>
            </header>

            <div class="sort-options">
                <div class="inner brackets med">
                    <a href="#" class="dropdown button" data-dropdown='sort-options-list'>sort by</a>
                    <ul class="f-dropdown" id="sort-options-list">
                        <xsl:apply-templates select="post-tags/tags/options" mode="tags-list"/>
                        <li><a href="{$root}/equip">None</a></li>
                    </ul>
                    <xsl:call-template name="search-bar"/>
                </div>
            </div>

            <ul class="post-list">
                <xsl:if test="$url-keywords != ''">
                    <xsl:apply-templates select="search-post-results/entry" mode="equip-post-list-public"/>
                </xsl:if>
            </ul>
        </section>
    </div>


</xsl:template>

</xsl:stylesheet>