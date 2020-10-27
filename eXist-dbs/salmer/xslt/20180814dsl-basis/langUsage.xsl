<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs tei" version="2.0">
    <xd:doc xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" scope="stylesheet">
        <xd:desc>
            <xd:detail>Licensed by Thomas Hansen under the Creative Commons Attribution-Share Alike
                3.0 United States license. You are free to copy, distribute, transmit, and remix
                this work, provided you attribute the work to Thomas Hansen as the original author
                and reference the Society for Danish Language and Literature [http://dsl.dk] for the
                work. If you alter, transform, or build upon this work, you may distribute the
                resulting work only under the same, similar or a compatible license. Any of the
                above conditions can be waived if you get permission from the copyright holder. For
                any reuse or distribution, you must make clear to others the license terms of this
                work. The best way to do this is with a link to the license
                [http://creativecommons.org/licenses/by-sa/3.0/deed.en].</xd:detail>
            <xd:p>
                <xd:b>Created on:</xd:b> Jan 5, 2010</xd:p>
            <xd:p>
                <xd:b>Author:</xd:b> Thomas Hansen</xd:p>
            <xd:copyright>2010, Society for Danish Language and Literature</xd:copyright>
        </xd:desc>
    </xd:doc>
    <xsl:template match="tei:langUsage">
        <p>
            <strong>Sprog: </strong>
            <xsl:apply-templates select="tei:language"/>
        </p>
    </xsl:template>
    <xsl:template match="tei:language">
        <xsl:choose>
            <xsl:when test="@ident = 'da'">
                <xsl:text>Dansk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'de'">
                <xsl:text>Tysk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'en'">
                <xsl:text>Engelsk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'fr'">
                <xsl:text>Fransk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'gda'">
                <xsl:text>Gammeldansk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'gmh'">
                <xsl:text>Middelhøjtysk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'gml'">
                <xsl:text>Middelnedertysk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'gr'">
                <xsl:text>Græsk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'gsv'">
                <xsl:text>Gammelsvensk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'la'">
                <xsl:text>Latin</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'nl'">
                <xsl:text>Nederlandsk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'no'">
                <xsl:text>Norsk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'xda'">
                <xsl:text>Ældre nydansk</xsl:text>
            </xsl:when>
            <xsl:when test="@ident = 'xno'">
                <xsl:text>Normannerfransk</xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>