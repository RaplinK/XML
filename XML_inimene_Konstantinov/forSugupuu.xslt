<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes" encoding="utf-8"/>

    <xsl:template match="/">
      Все года рождения

          <!--<xsl:for-each select="/inimene">
            <tr>
              <td>
                <xsl:value-of select="nimi"/>
              </td>
              <td>
                <xsl:value-of select="synnaaasta"/>
              </td>
              <td>
                <xsl:value-of select="lapsed/nimi"/>
              </td>
              <td>
                <xsl:value-of select="lapsed/synnaaasta"/>
              </td>
            </tr>
          </xsl:for-each>-->

            <xsl:for-each select="/inimene/synnaaasta/inimene/synnaaasta/inimene/synnaaasta"/>
      <xsl:for-each select="//inimene">
        <xsl:sort select="synnaaasta" order="ascending"/>
        <li>
        <xsl:value-of select="synnaaasta"/>
        </li>
      </xsl:for-each>
      <br/>
      Родословная в виде таблици
      <table border="1">
      <xsl:for-each select="//inimene">
        <tr>
          <td>Родитель родителя</td>
          <td>Родитель</td>
          <td>Имя</td>
          <td>Год рождения</td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td>
            
            <xsl:value-of select="nimi"/>
          </td>
          
          <td>
            
            <xsl:value-of select="synnaaasta"/>
          </td>
        </tr>
      </xsl:for-each>
      </table>


    </xsl:template>
</xsl:stylesheet>
