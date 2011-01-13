<xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:dia="http://www.lysator.liu.se/~alla/dia/" >

        <xsl:output method="xml" encoding="UTF-8" />

        <xsl:param name="line_width" />

        <xsl:template match="@*|node()">
                <xsl:copy>
                        <xsl:apply-templates select="@*|node()"/>
                </xsl:copy>
        </xsl:template>

        <!--xsl:template match="dia:real" >
                <xsl:element name="dia:real">
                        <xsl:attribute name="val">
                                <xsl:value-of select="$line_width" />
                        </xsl:attribute>
                </xsl:element >
        </xsl:template-->

        <!-- xsl:template match="dia:attribute[@name='line_width']/dia:real" >
                <dia:attribute name="line_width">
                        <xsl:element name="dia:real">
                                <xsl:attribute name="val">
                                        <xsl:value-of select="$line_width" />
                                </xsl:attribute>
                        </xsl:element >
                </dia:attribute>
        </xsl:template -->

        <xsl:template match="dia:attribute[@name='line_width']/dia:real" >
                <xsl:element name="dia:real">
                        <xsl:attribute name="val">
                                <xsl:value-of select="$line_width" />
                        </xsl:attribute>
                </xsl:element >
        </xsl:template>

</xsl:stylesheet>
