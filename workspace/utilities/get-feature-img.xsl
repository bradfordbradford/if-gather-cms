<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="get-feature-img">

        <div class='feature-img'>
            <img alt='' src='{$workspace}/{data/equip-feature-img/entry/feature-image/@path}/{data/equip-feature-img/entry/feature-image/filename}'/>
        </div>


</xsl:template>

</xsl:stylesheet>
