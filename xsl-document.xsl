<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" encoding="UTF-8"/>
    
    <xsl:template match="University">
        <html>
            <head>
                <title>Руководство ОмГТУ</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-top: 20px;
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 10px;
                        text-align: left;
                    }
                    th {
                        background-color: #4CAF50;
                        color: white;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                    .header {
                        text-align: center;
                        margin-bottom: 30px;
                    }
                    .university-name {
                        font-size: 24px;
                        font-weight: bold;
                        color: #2c3e50;
                    }
                    .photo {
                        border: 1px solid #ccc;
                        border-radius: 3px;
                    }
                </style>
            </head>
            <body>
                <div class="header">
                    <div class="university-name">
                        <xsl:value-of select="info/fullName"/>
                    </div>
                    <xsl:if test="info/website">
                        <div>
                            <xsl:value-of select="info/website"/>
                        </div>
                    </xsl:if>
                </div>
                
                <h2><xsl:value-of select="Rectorate/info/title"/></h2>

                <h3>Ректор</h3>
                <table>
                    <tr>
                        <th>ФИО</th>
                        <th>Должность</th>
                        <th>Ученое звание</th>
                        <th>Ученая степень</th>
                        <th>Фотография</th>
                    </tr>
                    <xsl:for-each select="Rectorate/rector">
                    <tr>
                        <td align="center">
                            <xsl:value-of select="surname"/><xsl:text> </xsl:text>
                            <xsl:value-of select="firstname"/><xsl:text> </xsl:text>
                            <xsl:value-of select="patronymic"/>
                        </td>
                        <td align="center">
                            <xsl:value-of select="position"/>
                        </td>
                        <td align="center">
                            <xsl:value-of select="academicTitle"/>
                        </td>
                        <td align="center">
                            <xsl:value-of select="academicDegree"/>
                        </td>
                        <td align="center">
                            <img src="{image/@src}" class="photo" width="100" height="120" alt="Фото"/>
                        </td>
                    </tr>
                    </xsl:for-each>
                </table>

                <h3>Проректоры</h3>
                <table>
                    <tr>
                        <th>№</th>
                        <th>ФИО</th>
                        <th>Должность</th>
                        <th>Ученое звание</th>
                        <th>Ученая степень</th>
                        <th>Фотография</th>
                    </tr>
                    <xsl:for-each select="Rectorate/pro-rectors/pro-rector">
                    <tr>
                        <td align="center">
                            <xsl:value-of select="@id"/>
                        </td>
                        <td align="center">
                            <xsl:value-of select="surname"/><xsl:text> </xsl:text>
                            <xsl:value-of select="firstname"/><xsl:text> </xsl:text>
                            <xsl:value-of select="patronymic"/>
                        </td>
                        <td align="center">
                            <xsl:value-of select="position"/>
                        </td>
                        <td align="center">
                            <xsl:value-of select="academicTitle"/>
                        </td>
                        <td align="center">
                            <xsl:value-of select="academicDegree"/>
                        </td>
                        <td align="center">
                            <img src="{image/@src}" class="photo" width="100" height="120" alt="Фото"/>
                        </td>
                    </tr>
                    </xsl:for-each>
                </table>
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>