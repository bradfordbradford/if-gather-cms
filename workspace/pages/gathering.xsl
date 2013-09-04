<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/base.xsl"/>
<xsl:import href="../utilities/get-call-outs.xsl"/>
<xsl:import href="../utilities/get-page-header.xsl"/>

<xsl:output method="xml"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
omit-xml-declaration="yes"
encoding="UTF-8"
indent="yes" />

<xsl:template match="data">

    <div class="row">
        <xsl:apply-templates select="gathering/entry" mode="get-page-header"/>
    </div>



    <div class="row">
        <section class="gathering-dates">
            <div class="cream-pattern">
                <div class="inner">
                    <img src="{$workspace}/assets/images/collages/ifgather-gathering-date.png" alt="IF:GATHER - Feb 7-8, 2014 (Austin, TX)"/>
                </div>
            </div>
            <div class="register-now sage-pattern">
                <h2 class="dart-right">Register Now</h2>
            </div>
        </section>
    </div>



    <div class="row">
        <section class="more-info-wrap">
            <header>
                <h3 class="sans">
                    More About the Gathering
                </h3>
                <hr class="dotted"/>
            </header>

            <div class="more-info-text newspaper-col">
                <xsl:apply-templates select="gathering/entry/more-about" mode="html"/>
            </div>

            <xsl:apply-templates select="gathering/entry/call-outs/item" mode="get-call-outs"/>

            <header>
                <h3 class="sans">
                    lodging &amp; food around austin texas
                </h3>
            </header>
            <div class="more-info-text newspaper-col">
                <xsl:apply-templates select="gathering/entry/food-and-lodging" mode="html"/>
            </div>
        </section>
    </div>



</xsl:template>


</xsl:stylesheet>