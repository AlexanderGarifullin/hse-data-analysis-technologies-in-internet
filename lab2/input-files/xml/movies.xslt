<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="text" encoding="UTF-8" />
	
    <xsl:template match="/movies">
		<xsl:text>Group: </xsl:text>
        <xsl:value-of select="@group"/>
        <xsl:text>&#10;</xsl:text>
        
        <xsl:for-each select="movie">
            <xsl:text>--------------------------</xsl:text>
            <xsl:text>&#10;</xsl:text>
            
			<xsl:text>Id: </xsl:text>
            <xsl:value-of select="@id"/>
            <xsl:text>&#10;</xsl:text>
			
			<xsl:text>Country: </xsl:text>
            <xsl:value-of select="@country"/>
            <xsl:text>&#10;</xsl:text>
			
            <xsl:text>Title: </xsl:text>
            <xsl:value-of select="title"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Genres: </xsl:text>
            <xsl:for-each select="genres/genre">
                <xsl:value-of select="."/>
                <xsl:text> </xsl:text>
            </xsl:for-each>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>Directors: </xsl:text>
            <xsl:for-each select="directors/director">
                <xsl:value-of select="."/>
                <xsl:text> </xsl:text>
            </xsl:for-each>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>Composers: </xsl:text>
            <xsl:for-each select="composers/composer">
                <xsl:value-of select="."/>
                <xsl:text> </xsl:text>
            </xsl:for-each>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>Cast: </xsl:text>
            <xsl:for-each select="cast/actor">
                <xsl:value-of select="."/>
                <xsl:text> </xsl:text>
            </xsl:for-each>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>Release Date: </xsl:text>
            <xsl:value-of select="releaseDate"/>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>Box Office: </xsl:text>
            <xsl:value-of select="boxOffice"/>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>Age Rating: </xsl:text>
            <xsl:value-of select="ageRating"/>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>Viewers: </xsl:text>
            <xsl:value-of select="viewers"/>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>Original Language: </xsl:text>
            <xsl:value-of select="originalLanguage"/>
            <xsl:text>&#10;</xsl:text>

        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
