<!-- @Reference mikhail-cct - https://github.com/mikhail-cct/CA1-In-class-Demo 
 @author Leopoldo Medeiros - https://github.com/Leopoldo-86/iwa 
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <table id="menuTable" class="indent">
            <thead>
                <tr>
                    <th colspan="7">Catolog CDs Heavy Melody Store</th>
                </tr>
                <tr>
                    <th>*</th>
                    <th>Artist</th>
                    <th>Album</th>
                    <th>Country</th>
                    <th>Company</th>
                    <th>Year</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/CATALOG/CD">
                    <tr id="{position()}">
                        <td align="center">
                            <input name="item0" type="checkbox" />
                        </td>
                        <td>
                            <xsl:value-of select="ARTIST" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="TITLE" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="COUNTRY" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="COMPANY" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="YEAR" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="PRICE" />
                        </td>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table><br/>
    </xsl:template>
</xsl:stylesheet>