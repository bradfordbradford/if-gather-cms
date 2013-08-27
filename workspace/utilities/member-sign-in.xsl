<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/base.xsl"/>
<xsl:import href="../utilities/filter-posts.xsl"/>
<xsl:import href="../utilities/mgmt-post.xsl"/>
<xsl:import href="../utilities/search-bar.xsl"/>
<xsl:import href="../utilities/page-header.xsl"/>

<xsl:output method="xml"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
omit-xml-declaration="yes"
encoding="UTF-8"
indent="yes" />

<xsl:template name="member-sign-in">

    <form method="post" autocomplete='off'>
        <label>Username
            <input name="fields[username]" type="text" />
        </label>
        <label>Password
            <input name="fields[password]" type="password" />
        </label>

        <input name="redirect" type="hidden" value="{$root}/private-portfolio" />
        <input name="member-action[login]" class="button" type="submit" value="Sign In" />
    </form>

</xsl:template>

</xsl:stylesheet>