<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="footer">

    <div class="inner">
        <div class="site-map">
            <xsl:apply-templates select="data/navigation" mode="footer-sitemap"/>
        </div>

        <div class="brand">
            <a href="{$root}/">
                <img alt='IF:GATHERING' src='{$workspace}/assets/images/logos/ifgather-logo-white-sm.png' />
            </a>
        </div>
    </div>

</xsl:template>

</xsl:stylesheet>
