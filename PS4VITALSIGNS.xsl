<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:n1="urn:hl7-org:v3">
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>
                    <xsl:value-of select="//n1:component/n1:section[n1:code/@code='8716-3']/n1:title"/>
                </h2>
                <table border="1" width="100%">
                    <thead>
                        <tr>
                            <th align="left">Date / Time: </th>
                            <th align="left">
                                <xsl:value-of select="//n1:component/n1:section[n1:code/@code='8716-3']/n1:text/n1:table/n1:thead/n1:tr/n1:th[2]"/>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//n1:component/n1:section[n1:code/@code='8716-3']/n1:text/n1:table/n1:tbody/n1:tr">
                            <tr>
                                <th align="left">
                                    <xsl:value-of select="n1:th"/>
                                </th>
                                <td>
                                    <xsl:value-of select="n1:td"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>