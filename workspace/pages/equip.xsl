<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/base.xsl"/>
<xsl:import href="../utilities/filter-posts.xsl"/>
<xsl:import href="../utilities/mgmt-post.xsl"/>
<xsl:import href="../utilities/search-bar.xsl"/>
<xsl:import href="../utilities/page-header.xsl"/>


<xsl:output method="xml"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
omit-xml-declaration="yes"
encoding="UTF-8"
indent="yes" />

<xsl:template match="data">

    <xsl:call-template name="page-header"/>

    <xsl:apply-templates select="post-tags/tags/options" mode="tags-list"/>

    <xsl:call-template name="search-bar"/>

    <xsl:choose>
        <xsl:when test="$filter">
            <!-- Hey, there's a filter! So, Filter Shit… -->
            <!-- Filter by Tag -->
            <xsl:apply-templates select="equip-stories/entry[tags/item/@handle = $filter]" mode="equip-post-list-public"/>

        </xsl:when>


        <xsl:otherwise>
            <!-- So, no filter: List Everything -->
            <ul class="post-list">
                <xsl:apply-templates select="equip-stories/entry" mode="equip-post-list-public"/>
            </ul>
        </xsl:otherwise>

    </xsl:choose>




    <!-- <xsl:call-template name="pagination">
     <xsl:with-param name="pagination" select="equip-stories/pagination" />

     <xsl:with-param name="pagination-url" select="'/equip-stories/$'" />
    </xsl:call-template> -->

</xsl:template>

</xsl:stylesheet>