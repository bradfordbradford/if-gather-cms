<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="head">

    <title>
        <xsl:call-template name="page-title"/>
    </title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />
    <meta name="description" content="{data/profile/entry/meta-description}" />
    <meta name="keywords" content="{data/profile/entry/meta-keywords}" />
    <meta name="author" content="{data/profile/entry/meta-author}" />
    <link rel="icon" type="images/png" href="{$workspace}/{data/profile/entry/bookmark/@path}/{data/profile/entry/bookmark/filename}" />
    <link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/assets/css/foundation.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/assets/css/pushy.css" />

    <script rel='javascript' src='{$workspace}/assets/js/vendor/custom.modernizr.js'></script>

	<!-- <script type="text/javascript" src="//use.typekit.net/{data/profile/entry/typekit-id}.js"></script>
	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>

    <script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', '<xsl:value-of select="data/profile/entry/google-analytics-id"/>']);
    _gaq.push(['_setDomainName', 'wearetelegraph.com']);
    _gaq.push(['_trackPageview']);

    (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
    </script>  -->

</xsl:template>

</xsl:stylesheet>