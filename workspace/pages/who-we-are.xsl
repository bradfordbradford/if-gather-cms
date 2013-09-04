<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/base.xsl"/>
<xsl:import href="../utilities/mgmt-post.xsl"/>
<xsl:import href="../utilities/pagination.xsl"/>
<xsl:import href="../utilities/get-page-header.xsl"/>
<xsl:import href="../utilities/get-people-list.xsl"/>

<xsl:output method="xml"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
omit-xml-declaration="yes"
encoding="UTF-8"
indent="yes" />

<xsl:template match="data">

    <!-- <xsl:param name="leader" select="who-we-are/entry/people/item/leader"/> -->

    <div class="row">
        <xsl:apply-templates select="who-we-are/entry" mode="get-page-header"/>
    </div>

    <div class="row">
        <ul class="profile-list expansive">
            <xsl:apply-templates select="who-we-are/entry/people/item/position[contains(item, 'Core Member')]" mode="get-people-profiles-extnsv"/>
        </ul>
    </div>



    <div class="row">
        <header class='page-section-header'>
          <h3 class='sans'>if:leadership</h3>
          <hr class='dotted'/>
        </header>

        <ul class="profile-list headshots">
            <xsl:apply-templates select="who-we-are/entry/people/item/position[contains(item, 'Leader')]" mode="get-people-profiles"/>
        </ul>
    </div>



    <div class="row">
        <header class='page-section-header'>
          <h3 class='sans'>if:advisors</h3>
          <hr class='dotted'/>
        </header>

        <ul class="profile-list headshots">
            <xsl:apply-templates select="who-we-are/entry/people/item/position[contains(item, 'Advisor')]" mode="get-people-profiles"/>
        </ul>
    </div>


</xsl:template>


</xsl:stylesheet>