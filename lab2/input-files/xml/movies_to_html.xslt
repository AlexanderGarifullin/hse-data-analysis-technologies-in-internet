<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/movies">
        <html>
            <head>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                </style>
                <title><xsl:value-of select="@group" /> Movies</title>
            </head>
            <body>
                <h1><xsl:value-of select="@group" /></h1>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Country</th>
                            <th>Genres</th>
                            <th>Directors</th>
                            <th>Composers</th>
                            <th>Cast</th>
                            <th>Release Date</th>
                            <th>Box Office</th>
                            <th>Age Rating</th>
                            <th>Viewers</th>
                            <th>Original Language</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="movie">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="@country"/></td>
                                <td>
                                    <xsl:for-each select="genres/genre">
                                        <xsl:value-of select="."/>
                                        <xsl:if test="position() != last()">, </xsl:if>
                                    </xsl:for-each>
                                </td>
                                <td>
                                    <xsl:for-each select="directors/director">
                                        <xsl:value-of select="."/>
                                        <xsl:if test="position() != last()">, </xsl:if>
                                    </xsl:for-each>
                                </td>
                                <td>
                                    <xsl:for-each select="composers/composer">
                                        <xsl:value-of select="."/>
                                        <xsl:if test="position() != last()">, </xsl:if>
                                    </xsl:for-each>
                                </td>
                                <td>
                                    <xsl:for-each select="cast/actor">
                                        <xsl:value-of select="."/>
                                        <xsl:if test="position() != last()">, </xsl:if>
                                    </xsl:for-each>
                                </td>
                                <td><xsl:value-of select="releaseDate"/></td>
                                <td><xsl:value-of select="boxOffice"/></td>
                                <td><xsl:value-of select="ageRating"/></td>
                                <td><xsl:value-of select="viewers"/></td>
                                <td><xsl:value-of select="originalLanguage"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
