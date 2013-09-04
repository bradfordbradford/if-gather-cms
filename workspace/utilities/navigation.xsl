<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="navigation" mode="main-nav">

	<xsl:variable name="author-logged-in" select="/data/logged-in-author/author"/>
	<xsl:variable name="member-logged-in" select="/data/events/member-login-info/@logged-in"/>


<section class="site-header">
	<div class="brand">
		<a href="{$root}/home">
			<span class="logo"></span>
			<h1>IF:GATHERING</h1>
		</a>
	</div>
	<nav class="site-nav">

		<ul>

			<xsl:apply-templates select="page[not(types/type = 'hidden') and not(types/type = 'admin')]"/>

			<!-- Member Log In -->
			<xsl:if test="$member-logged-in = 'yes'">
				<form method="post" autocomplete='off'>
				    <input type='hidden' name='redirect' value='{$root}/posts' />
				    <input name="member-action[logout]" type="submit" class="button" value="Log Out" />
				</form>
			</xsl:if>

		</ul>

		<div class="menu-btn">&#9776; Menu</div>

	</nav>
</section>

</xsl:template>


<xsl:template match="navigation" mode="pushy-nav">

	<nav class="pushy pushy-left">

		<xsl:variable name="author-logged-in" select="/data/logged-in-author/author"/>
		<xsl:variable name="member-logged-in" select="/data/events/member-login-info/@logged-in"/>

		<ul>
			<xsl:apply-templates select="page[not(types/type = 'hidden') and not(types/type = 'admin')]"/>

			<!-- Admin -->
			<xsl:if test="$author-logged-in">
				<li><p>DASHBOARD</p></li>
				<li><a href="{$root}/drafts/">Drafts</a></li>
				<li><a href="{$root}/symphony/">Admin</a></li>

				<xsl:if test="/data/logged-in-author/author[@user-type = 'developer']">
					<li><a href="?debug">Debug</a></li>
				</xsl:if>
			</xsl:if>

			<!-- Member Log In -->
			<xsl:if test="$member-logged-in = 'yes'">
				<form method="post" autocomplete='off'>
				    <input type='hidden' name='redirect' value='{$root}/posts' />
				    <input name="member-action[logout]" type="submit" class="button" value="Log Out" />
				</form>
			</xsl:if>

		</ul>
	</nav>

</xsl:template>



<xsl:template match="navigation" mode="footer-sitemap">
	<xsl:apply-templates select="page[not(types/type = 'hidden') and not(types/type = 'admin')]"/>
</xsl:template>



<xsl:template match="page">
	<li>
		<xsl:if test="@handle = $root-page">
			<xsl:attribute name="class">active</xsl:attribute>
		</xsl:if>
		<a href="{$root}/{@handle}/">
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

</xsl:stylesheet>
