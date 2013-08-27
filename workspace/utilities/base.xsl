<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="date-time.xsl"/>
<xsl:import href="page-title.xsl"/>
<xsl:import href="typography.xsl"/>
<xsl:import href="truncate-adv.xsl"/>
<xsl:import href="head.xsl"/>
<xsl:import href="navigation.xsl"/>
<xsl:import href="footer.xsl"/>
<xsl:import href="body-scripts.xsl"/>

<xsl:output method="xml"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
omit-xml-declaration="yes"
encoding="UTF-8"
indent="yes" />

<xsl:template match="/">

    <xsl:comment> paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ </xsl:comment>
    <xsl:comment><![CDATA[[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]]]></xsl:comment>
    <xsl:comment><![CDATA[[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]]]></xsl:comment>
    <xsl:comment><![CDATA[[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]]]></xsl:comment>
    <xsl:comment><![CDATA[[if gt IE 8]><!]]></xsl:comment><html lang="en"><xsl:comment><![CDATA[<![endif]]]></xsl:comment>

        <xsl:call-template name="head"/>

        <body class="page-{$page-title}">
            <div class="site-wrap">

                <xsl:apply-templates select="data/navigation"/>

                <div class="content-wrap">
                    <xsl:apply-templates/>
                </div>

                <footer class="site-footer">
                    <xsl:call-template name="footer"/>
                </footer>

            </div>

            <xsl:call-template name="body-scripts"/>
        </body>

    </html>
</xsl:template>

</xsl:stylesheet>