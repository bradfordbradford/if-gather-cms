<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<!-- ===== What If People ===== -->
<xsl:template match="item" mode="get-people-what-if">

    <li>

        <a href="{$workspace}{../../audio/@path}/{../../audio/filename}" class="track"></a>

        <div class="overlay">
            <div class="info">
                <h4>
                    <xsl:apply-templates select="name" mode="html"/>
                </h4>
                <hr/>
                <p>
                    <xsl:apply-templates select="title-position" mode="html"/>
                </p>
            </div>
        </div>

        <img src="{$root}/image/2/284/284/5/{profile-image/@path}/{profile-image/filename}" alt=""/>
    </li>

</xsl:template>

<!-- ===== People ===== -->
<xsl:template match="item" mode="get-people">

    <li>
        <xsl:if test="$current-page = 'what-if'">
            <a href="{$workspace}/{../../audio/@path}/{../../audio/filename}" class="track"></a>
        </xsl:if>

        <a href="{$root}/unleash-story/{../../header/@handle}">
            <div class="overlay">
                <div class="info">
                    <h4>
                        <xsl:apply-templates select="name" mode="html"/>
                    </h4>
                    <hr/>
                    <p>
                        <xsl:apply-templates select="title-position" mode="html"/>
                    </p>
                </div>
            </div>
        </a>
        <img src="{$root}/image/2/284/284/5/{profile-image/@path}/{profile-image/filename}" alt=""/>
    </li>

</xsl:template>



<!-- ===== Profiles ===== -->
<xsl:template match="position" mode="get-people-profiles">

    <li>
        <div class="profile-img-wrap">
            <a href="mailto:{../email}">
                <img src="{$root}/image/1/240/0/{../profile-image/@path}/{../profile-image/filename}" alt=""/>
            </a>
        </div>
        <div class="profile-info-wrap">
            <h4 class="name">
                <xsl:apply-templates select="../name" mode="html"/>
            </h4>
        </div>
    </li>

</xsl:template>


<!-- ===== Profiles ===== -->
<xsl:template match="position" mode="get-people-profiles-extnsv">

    <li>
        <div class="profile-img-wrap">
            <a href="mailto:{../email}">
                <img src="{$root}/image/1/240/0/{../profile-image/@path}/{../profile-image/filename}" alt=""/>
            </a>
        </div>
        <div class="profile-info-wrap">
            <h4 class="name">
                <xsl:apply-templates select="../name" mode="html"/>
            </h4>
            <p class="occupation">
                <xsl:apply-templates select="../title-position" mode="html"/>
            </p>
            <p>
                <xsl:apply-templates select="../about" mode="html"/>
            </p>
        </div>
    </li>

</xsl:template>

</xsl:stylesheet>

