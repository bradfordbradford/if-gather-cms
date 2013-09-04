<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:addthis="url/here"
    >

<xsl:import href="../utilities/base.xsl"/>
<xsl:import href="../utilities/get-page-header.xsl"/>
<xsl:import href="../utilities/mgmt-post.xsl"/>
<xsl:import href="../utilities/mgmt-forms.xsl"/>
<xsl:import href="../utilities/get-comments.xsl"/>
<xsl:import href="../utilities/get-people-list.xsl"/>

<xsl:template match="data">

    <div class="row">
        <xsl:apply-templates select="what-if-header-and-question/entry" mode="get-page-header"/>
    </div>





    <div class="row">
          <div id='jquery_jplayer'></div>
        <ul class="image-list four-across" id="player-wrap">
            <xsl:apply-templates select="what-if-stories/entry/people/item" mode="get-people-what-if"/>
        </ul>
    </div>



    <div class="row">
        <div class="comment-wrap">
            <div class="cream-pattern shadow prompt">
                <div class="inner">
                    <h4>join the conversation &amp; share your response</h4>
                </div>
            </div>
            <div class="sage-pattern form-wrap">
                <div class="inner">
                    <div class="question">
                        <h4 class="sans">
                            <xsl:value-of select="what-if-header-and-question/entry/header"/>
                        </h4>
                    </div>
                    <xsl:call-template name="get-what-if-comment-form"/>
                </div>
            </div>
        </div>
    </div>



    <div class="row">
        <ul class="comments-list js-masonry">
            <xsl:call-template name="get-what-if-comments"/>
        </ul>
    </div>



</xsl:template>

</xsl:stylesheet>