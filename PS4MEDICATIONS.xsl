<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:n1="urn:hl7-org:v3">
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>
                    <xsl:value-of select="//n1:component/n1:section[n1:code/@code='10160-0']/n1:title"/>
                </h2>
                <table border="1">
                    <tr>
                        <th>Medication</th>
                        <th>Indications</th>
                    </tr>
                    <xsl:for-each select="//n1:component/n1:section[n1:code/@code='10160-0']/n1:text/n1:table/n1:tbody/n1:tr">
                        
                        <tr>
                            <td>
                                <xsl:value-of select="n1:td[1]"/>
                                
                            </td>
                            <td>
                                <xsl:value-of select="n1:td[2]"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>