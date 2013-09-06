<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="body-scripts">
    <!-- <script rel='javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script> -->
    <script rel='javascript' src='{$workspace}/assets/js/vendor/jquery.js'></script>
    <script rel='javascript' src='{$workspace}/assets/js/pushy/pushy.min.js'></script>

    <xsl:if test="$current-page = 'what-if'">
        <script rel='javascript' src='{$workspace}/assets/js/jplayer/jquery.jplayer.min.js'></script>
    </xsl:if>


    <xsl:if test="($current-page = 'equip') or ($current-page = 'search')">
        <script rel='javascript' src='{$workspace}/assets/js/foundation/foundation.js'></script>
        <script rel='javascript' src='{$workspace}/assets/js/foundation/foundation.dropdown.js'></script>
    </xsl:if>

    <xsl:if test="$current-page = 'what-if'">
        <script rel='javascript' src='{$workspace}/assets/js/forms/tiny-limiter.js'></script>
        <script>
        var addthis_config = {"data_track_addressbar":true};
        </script>
        <script src='//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-509d72c21cd49086'></script>
    </xsl:if>

    <script rel='javascript' src='{$workspace}/assets/js/site-ck.js'></script>


</xsl:template>

</xsl:stylesheet>