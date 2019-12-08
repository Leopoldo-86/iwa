<!--
   @author mikhail-cct - https://github.com/mikhail-cct/CA1-In-class-Demo
-->

<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <table id="catalog" class="indent">
            <thead>
                <tr>
                    <th colspan="3">Catalog CDs</th>
                </tr>
                <tr>
                    <th>Title</th>
                    <th>Artist</th>
                    <th>Country</th>
                    <th>Record_Company</th>
                    <th>Price</th>
                    <th>Year</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/CATALOG/CD">
                    <tr id="{position()}">
                        <td align="center">
                            <input name="item0" type="checkbox" />
                        </td>
                        <td>
                            <xsl:value-of select="TITLE" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="ARTIST" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="COUNTRY" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="COMPANY" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="PRICE" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="YEAR" />
                        </td>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table><br/>
    </xsl:template>
</xsl:stylesheet>