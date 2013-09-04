<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="tags.xsl"/>
<xsl:import href="get-people-list.xsl"/>



<!-- Layout for EQUIP SINGLE POST - Public -->
<xsl:template match="entry" mode="equip-post-public">
    <header class="title">
        <h2>
            <span class='dart-blk-left ornament'></span>
            <a href="{$root}/equip">Back to Latest Posts</a>
        </h2>
    </header>

    <article class="equip-post">
        <header class="article-header">
            <h4>
                <xsl:value-of select="header"/>
            </h4>
            <div class="date">
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="date/date/start"/>
                    <xsl:with-param name="format" select="'n.d.y'"/>
                </xsl:call-template>
            </div>
        </header>

        <xsl:apply-templates select="article" mode="html"/>

    </article>

    <hr/>

    <ul class="tags">
        <li>Tags:</li> <xsl:text> </xsl:text>
        <xsl:apply-templates select="tags/item" mode="tags-commas"/>
    </ul>

</xsl:template>




<!-- Layout for EQUIP SINGLE POST - Private -->
<xsl:template match="entry" mode="equip-post-private">

    <header class="title">
        <h2>
            <span class='dart-blk-left ornament'></span>
            <a href="{$root}/equip">Back to Latest Posts</a>
        </h2>
    </header>

    <article class="equip-post">
        <header class="article-header">
            <h4>
                <xsl:value-of select="header"/>
                <div class="date">
                    <xsl:call-template name="format-date">
                        <xsl:with-param name="date" select="date/date/start"/>
                        <xsl:with-param name="format" select="'n.d.y'"/>
                    </xsl:call-template>
                </div>
            </h4>
        </header>

        <xsl:apply-templates select="article" mode="html"/>

        <ul>
            <xsl:apply-templates select="tags/item" mode="tags-commas"/>
        </ul>

    </article>

</xsl:template>




<!-- Layout for EQUIP POST LIST - Public List -->
<xsl:template match="*" mode="equip-post-list-public">
    <li>
        <a href="{$root}/equip/story/{header/@handle}">
            <header class="article-header">
                <h4><xsl:value-of select="header"/></h4>
                <div class="date">
                    <xsl:call-template name="format-date">
                        <xsl:with-param name="date" select="date/date/start"/>
                        <xsl:with-param name="format" select="'n.d.y'"/>
                    </xsl:call-template>
                </div>
            </header>
        </a>


            <xsl:call-template name="truncate">
                <xsl:with-param name="node" select="article"/>
                <xsl:with-param name="limit" select="'140'"/>
            </xsl:call-template>
            <span class='dart-blk-right ornament'></span>

    </li>

</xsl:template>




<!-- Layout for POST LIST - Private List -->
<xsl:template match="entry" mode="post-list-private">

    <h2>
        <a href="{$root}/draft/{header/@handle}"><xsl:value-of select="header"/></a>
    </h2>
    <h3><xsl:value-of select="sub-header"/></h3>
    <h4>
        <xsl:call-template name="format-date">
            <xsl:with-param name="date" select="date/date/start"/>
            <xsl:with-param name="format" select="'n.d.y'"/>
        </xsl:call-template>
    </h4>
    <ul>
        <xsl:apply-templates select="tags/item" mode="tags-commas"/>
    </ul>

</xsl:template>






<!-- =============================== -->
<!--             WHAT IF             -->
<!-- =============================== -->
<!-- Layout for UNLEASH POST LIST - Public List -->
<xsl:template match="entry" mode="what-if-post-list-public">
    <li>
        <a class="overlay" href="{$root}/what-if-story/{header/@handle}">
            <div class="info">
                <h4><xsl:value-of select="people/item/name"/></h4>
                <hr/>
                <p><xsl:value-of select="people/item/title-position"/></p>
            </div>
        </a>
        <img src="{$root}/image/1/284/0/{people/item/profile-image/@path}/{people/item/profile-image/filename}" alt=""/>
    </li>

</xsl:template>





<!-- =============================== -->
<!--             UNLEASH             -->
<!-- =============================== -->

<!-- Layout for UNLEASH POST LIST - Public List -->
<xsl:template match="entry" mode="unleash-post-list-public">
    <xsl:apply-templates select="people/item" mode="get-people"/>
</xsl:template>



<!-- Layout for UNLEASH SINGLE POST - Public -->
<xsl:template match="entry" mode="unleash-post-public">
    <xsl:if test="banner-image">
        <img src="{$workspace}/{banner-image/@path}/{banner-image/filename}" class="banner"/>
    </xsl:if>


    <div class="row">
        <header class='unleash-post-header'>
            <xsl:if test="banner-image">
                <xsl:attribute name="class">with-banner unleash-post-header</xsl:attribute>
            </xsl:if>
            <div class='title sage-pattern'>
              <h2 class='sans'>
                <xsl:value-of select="header"/>
              </h2>
              <hr/>
              <div class='emph'><xsl:value-of select="author"/></div>
            </div>
            <div class='post-navigation'>
              <xsl:apply-templates select="prev-next"/>
            </div>
        </header>
    </div>



    <div class="row">
        <article class="unleash-article">
            <xsl:apply-templates select="article" mode="html"/>

            <footer class='unleash-footer'>
              <hr class='full'/>
              <div class='meta'>
                <div class='date'>
                  <xsl:call-template name="format-date">
                        <xsl:with-param name="date" select="date/date/start"/>
                        <xsl:with-param name="format" select="'n.d.y'"/>
                    </xsl:call-template>
                </div>
                <div class='spacer'></div>
                <div class='social emph'>
                  social stuff here
                </div>
              </div>
              <div class='return-nav-wrap brackets med'>
                <a class='return' href="{$root}/unleash">
                  <h4>back to latest posts</h4>
                </a>
              </div>
            </footer>
        </article>
    </div>

</xsl:template>


</xsl:stylesheet>
