<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/base.xsl"/>
<xsl:import href="../utilities/mgmt-post.xsl"/>
<xsl:import href="../utilities/pagination.xsl"/>
<xsl:import href="../utilities/get-page-header.xsl"/>

<xsl:output method="xml"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
omit-xml-declaration="yes"
encoding="UTF-8"
indent="yes" />

<xsl:template match="data">

    <div class="row">
        <xsl:apply-templates select="unleash-header-and-description/entry" mode="get-page-header"/>
    </div>


    <ul class="image-list three-across">
        <xsl:apply-templates select="unleash-stories/entry" mode="unleash-post-list-public"/>
    </ul>


</xsl:template>

</xsl:stylesheet>