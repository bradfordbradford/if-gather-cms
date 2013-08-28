<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/base.xsl"/>
<xsl:import href="../utilities/mgmt-post.xsl"/>
<xsl:import href="../utilities/pagination.xsl"/>
<xsl:import href="../utilities/page-header.xsl"/>
<xsl:import href="../utilities/mgmt-forms.xsl"/>
<xsl:import href="../utilities/get-comments.xsl"/>



<xsl:template match="data">

    <xsl:call-template name="page-header"/>

    <ul class="image-list four-across">
        <xsl:apply-templates select="what-if-stories/entry" mode="what-if-post-list-public"/>
    </ul>

    <xsl:call-template name="get-what-if-comment-form"/>

    <xsl:call-template name="get-what-if-comments"/>

</xsl:template>

</xsl:stylesheet>