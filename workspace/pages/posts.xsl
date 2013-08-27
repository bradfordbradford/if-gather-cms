<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/base.xsl"/>
<xsl:import href="../utilities/mgmt-post.xsl"/>
<xsl:import href="../utilities/pagination.xsl"/>
<xsl:import href="../utilities/page-header.xsl"/>

<xsl:output method="xml"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
omit-xml-declaration="yes"
encoding="UTF-8"
indent="yes" />

<xsl:template match="data">

    <xsl:call-template name="page-header"/>

    <xsl:apply-templates select="posts/entry" mode="post-list-public"/>

    <xsl:call-template name="pagination">
     <xsl:with-param name="pagination" select="posts/pagination" />

     <xsl:with-param name="pagination-url" select="'/posts/$'" />
    </xsl:call-template>

</xsl:template>

</xsl:stylesheet>