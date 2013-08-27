<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/base.xsl"/>
<xsl:import href="../utilities/mgmt-post.xsl"/>
<xsl:import href="../utilities/pagination.xsl"/>

<xsl:output method="xml"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
omit-xml-declaration="yes"
encoding="UTF-8"
indent="yes" />

<xsl:template match="data">

    <h1><xsl:value-of select="$page-title"/></h1>
    <hr/>

    <xsl:apply-templates select="drafts/entry" mode="post-list-private"/>

    <xsl:call-template name="pagination">
     <xsl:with-param name="pagination" select="drafts/pagination" />
     <xsl:with-param name="pagination-url" select="'http://sites.tc/Ensembles/Publishing-Platform/drafts/$'" />
    </xsl:call-template>

</xsl:template>

</xsl:stylesheet>