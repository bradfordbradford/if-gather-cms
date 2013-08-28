<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="search-bar">
    <form action="/equip-search-results" method="get">
        <label>Search <input type="text" name="keywords" /></label>
        <input class="button" type="submit" name="/search" value="Search" />
    </form>
</xsl:template>

</xsl:stylesheet>
