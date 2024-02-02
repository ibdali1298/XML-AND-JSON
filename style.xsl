<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
    <head>
        <title>XML AND JSON</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></link>
        <link type="image/icon" rel="icon" href=""></link>
    </head>
    <body>
        <div class="container text-center">
            <div class="row">
                <div class="col-10">
                    <h1 class="text-center mt-3 text-secondary">XML AND JSON</h1><br></br>
                    <table class="table text-center " style="mt-5">
                        <thead>
                            <tr>
                                <th class="text-secondary">ID</th>
                                <th  class="text-secondary">First Name</th>
                                <th  class="text-secondary">Last Name</th>
                                <th  class="text-secondary">Email</th>
                            </tr>
                        </thead>
                        <xsl:for-each select="Student/stu">
                    <tbody>
                        <tr>
                            <td class="text-info">
                                <xsl:value-of select="@id"/>
                            </td>
                            <td  class="text-info">
                                <xsl:value-of select="fname"/>
                            </td>
                            <td class="text-info">
                                <xsl:value-of select="lname"/>
                            </td>
                            <td class="text-info"> 
                                <xsl:value-of select="email"/>
                            </td>
                           
                        </tr>
                    </tbody>
                    </xsl:for-each>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>