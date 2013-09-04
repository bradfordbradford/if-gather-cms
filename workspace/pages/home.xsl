<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/base.xsl"/>


<xsl:output method="xml"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
omit-xml-declaration="yes"
encoding="UTF-8"
indent="yes" />

<xsl:template match="data">

    <section class="welcome">
        <div class="row">
            <h3 class="mission-statement">
                <xsl:apply-templates select="home/entry/header" mode="html"/>
            </h3>
        </div>

        <div class="row">
            <div class="what-if-wrap">
                <a href="" class="quote cream-pattern shadow">
                    <header>
                        <h2>
                            <xsl:value-of select="what-if-header-and-question/entry/header"/>
                        </h2>
                    </header>
                </a>
                <div class="what-if-clg"></div>
            </div>
        </div>
    </section>



    <section class="register">
        <div class="row">
            <div class="quote sage-pattern">
                <h3 class="sans">
                    <xsl:apply-templates select="home/entry/quotes/item[1]/quote" mode="html"/>
                </h3>
                <hr/>
                <div class="emph">
                    <xsl:apply-templates select="home/entry/quotes/item[1]/cite" mode="html"/>
                </div>
            </div>

            <div class="register-now-wrap">
                <a href="" class="grey-pattern">
                    register now
                    <span class="dart-wht-right ornament"></span>
                </a>
            </div>
        </div>
    </section>



    <section class="equip">
        <div class="row">
            <div class="highlight-article row">
                <header>
                    <h2>Equip:</h2>
                    <span class="tagline emph">
                        <xsl:apply-templates select="home/entry/equip-header" mode="html"/>
                    </span>
                </header>

                <article>
                    <p class="brackets lrg">
                        <xsl:apply-templates select="home/entry/equip-description" mode="html"/>
                    </p>
                </article>
            </div>
        </div>
    </section>



    <section class="questions">
        <div class="row">
            <div class="quote sage-pattern">
                <a href="">
                    <h3 class="sans">
                        <xsl:apply-templates select="home/entry/quotes/item[2]/quote" mode="html"/>
                    </h3>
                    <div class="emph">
                        <span class="ems-before-after"></span>
                        <xsl:apply-templates select="home/entry/quotes/item[2]/cite" mode="html"/>
                        <span class="ems-before-after"></span>
                    </div>
                </a>
            </div>

            <div class="question cream-pattern shadow">
                <a href="">
                    <h3>
                        we're sure you have questions
                    </h3>
                    <div class="emph">
                        <span class="ems-before-after"></span>
                        Let's see if we can answer those for you.
                        <span class="ems-before-after"></span>
                    </div>
                </a>
            </div>
        </div>
    </section>



    <section class="unleash">
        <div class="row">
            <div class="highlight-article row">
                <header>
                    <h2>unleash:</h2>
                    <span class="tagline emph">
                        <xsl:apply-templates select="home/entry/unleash-header" mode="html"/>
                    </span>
                </header>

                <article>
                    <p class="brackets lrg">
                        <xsl:apply-templates select="home/entry/unleash-description" mode="html"/>
                    </p>
                </article>
            </div>
        </div>
    </section>


</xsl:template>


</xsl:stylesheet>