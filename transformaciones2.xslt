<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Información de Clientes</title>
    <style>
      table {
        border-collapse: collapse;
        width: 50%;
      }
      th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
      }
      th {
        background-color: #f2f2f2;
      }
    </style>
  </head>
  <body>
    <h1>Información de Clientes</h1>
    <xsl:apply-templates select="//Clientes/DatosPersonales"/>
  </body>
  </html>
</xsl:template>

<xsl:template match="DatosPersonales">
  <table>
    <tr>
      <th colspan="2">Cliente: <xsl:value-of select="concat(Nombre, ' ', Apellidos)"/></th>
    </tr>
    <tr>
      <td><b>Nombre:</b></td>
      <td><xsl:value-of select="Nombre"/></td>
    </tr>
    <tr>
      <td><b>Apellidos:</b></td>
      <td><xsl:value-of select="Apellidos"/></td>
    </tr>
    <tr>
      <td><b>Teléfono:</b></td>
      <td><xsl:value-of select="Telefono"/></td>
    </tr>
    <tr>
      <td><b>Dirección:</b></td>
      <td><xsl:value-of select="concat(Direccion/Calle, ', ', 
                                        Direccion/Ciudad, ', ',
                                        Direccion/CPostal, ', ',
                                        Direccion/Provincia)"/>
      </td>
    </tr>
    <tr>
      <td><b>Email:</b></td>
      <td><xsl:value-of select="Email"/></td>
    </tr>
  </table>
  <br/>
</xsl:template>

</xsl:stylesheet>
