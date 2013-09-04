<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<!-- Call Outs -->
<xsl:template match="item" mode="get-call-outs">

    <div class="info-col">
        <h4 class="sans">
            <xsl:value-of select="value"/>
        </h4>
        <xsl:apply-templates select="description" mode="html"/>
    </div>

</xsl:template>


</xsl:stylesheet>


