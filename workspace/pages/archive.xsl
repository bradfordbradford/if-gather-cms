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

    <xsl:choose>
        <xsl:when test="$filter">
            <!-- Hey, there's a filter! So, Filter Shit… -->
            <!-- Filter by Year -->
            <xsl:apply-templates select="posts-no-pagination/entry[substring(date/date/start/@iso,1,4) = $filter]" mode="post-list-public"/>

            <!-- Filter by Year/Month -->
            <xsl:apply-templates select="posts-no-pagination/entry[substring(date/date/start/@iso,1,7) = $filter]" mode="post-list-public"/>

            <!-- Filter by Tag -->
            <xsl:apply-templates select="posts-no-pagination/entry[tags/item/@handle = $filter]" mode="post-list-public"/>


        </xsl:when>


        <xsl:otherwise>

            <xsl:call-template name="search-bar"/>

            <!-- So, no filter: List Filter Options -->
            <h3>Time</h3>
            <xsl:apply-templates select="filter-posts-by-date/year" mode="month-year-list" />


            <h3>Tags</h3>
            <xsl:apply-templates select="post-tags/tags/options" mode="tags-list"/>
        </xsl:otherwise>

    </xsl:choose>


</xsl:template>

</xsl:stylesheet>