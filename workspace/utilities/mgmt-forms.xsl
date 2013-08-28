<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<!-- Form for WHAT IF Comments -->
<xsl:template name="get-what-if-comment-form">

    <form action="" method="post">
        <xsl:for-each select="events/save-what-if-comments">
            <xsl:choose>
                <xsl:when test="@result = 'success'"><p class="{@result}">Your comment has been saved successfully.</p></xsl:when>
                <xsl:otherwise>
                    <div class="{@result}">
                    <p>Ah-Oh!</p>
                        <ul>
                            <xsl:apply-templates select="//@message"/>
                        </ul>
                    </div>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
        <fieldset>

            <label>Comment <textarea name="fields[comment]" rows="5" cols="21"><xsl:value-of select="events/save-what-if-comments/post-values/comment" /></textarea></label>
            <label>Name <input type="text" name="fields[name]" value="{events/save-what-if-comments/post-values/name}" /></label>

            <input name="send-email[recipient]" value="/data/site-admin/author/username" type="hidden" />
            <input name="send-email[subject]" value="What If Comment Submission" type="hidden" />
            <input name="send-email[sender-name]" value="fields[name]" type="hidden" />

            <input name="send-email[body]" value="fields[name] fields[date], fields[comment], " type="hidden" />

            <input name="redirect" type="hidden" value="{$root}/thanks" />

            <input id="submit" type="submit" name="action[save-what-if-comments]" value="share" />
        </fieldset>
    </form>


</xsl:template>


<xsl:template match="//@message">
    <li><xsl:value-of select="."/></li>
</xsl:template>


</xsl:stylesheet>
