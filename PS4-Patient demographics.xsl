<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:hl7="urn:hl7-org:v3"
    exclude-result-prefixes="hl7">
    
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Patient Chart Summary</title>
            </head>
            <body>
                <div id="patient-details">
                    <h1>Patient Chart Summary</h1>
                    <xsl:apply-templates select="//hl7:patientRole"/>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="hl7:patientRole">
        <div>
            <strong>Patient Name: </strong>
            <xsl:value-of select="hl7:patient/hl7:name/hl7:given"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="hl7:patient/hl7:name/hl7:family"/>
        </div>
        <div>
            <strong>Date of Birth: </strong>
            <xsl:value-of select="hl7:patient/hl7:birthTime/@value"/>
        </div>
        <div>
            <strong>Sex: </strong>
            <xsl:value-of select="hl7:patient/hl7:administrativeGenderCode/@displayName"/>
        </div>
        <div>
            <strong>Address: </strong>
            <xsl:value-of select="hl7:addr/hl7:streetAddressLine"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="hl7:addr/hl7:city"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="hl7:addr/hl7:state"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="hl7:addr/hl7:postalCode"/>
        </div>
        <div>
            <strong>Contact: </strong>
            <xsl:value-of select="hl7:telecom/@value"/>
        </div>
        <div>
            <strong>Patient ID: </strong>
            <xsl:value-of select="hl7:id/@extension"/>
        </div>
    </xsl:template>
    
</xsl:stylesheet>