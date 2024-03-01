<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Información de Pedidos</title>
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
    <h1>Información de Pedidos</h1>
    <xsl:apply-templates select="//Pedido"/>
  </body>
  </html>
</xsl:template>

<xsl:template match="Pedido">
  <table>
    <tr>
      <th colspan="2">Pedido Número: <xsl:value-of select="NumeroPedido"/></th>
    </tr>
    <tr>
      <td><b>Fecha de Compra:</b></td>
      <td><xsl:value-of select="FechaCompra"/></td>
    </tr>
    <tr>
      <td><b>Fecha de Entrega:</b></td>
      <td><xsl:value-of select="FechaEntrega"/></td>
    </tr>
    <tr>
      <td><b>Total de Factura:</b></td>
      <td><xsl:value-of select="TotalFactura"/></td>
    </tr>
    <tr>
      <td colspan="2"><b>Producto:</b></td>
    </tr>
    <tr>
      <td>Nombre:</td>
      <td><xsl:value-of select="Producto/NombreProducto"/></td>
    </tr>
    <tr>
      <td>Referencia:</td>
      <td><xsl:value-of select="Producto/Referencia"/></td>
    </tr>
    <tr>
      <td>Precio:</td>
      <td><xsl:value-of select="Producto/Precio"/></td>
    </tr>
    <tr>
      <td>Unidades:</td>
      <td><xsl:value-of select="Producto/Unidades"/></td>
    </tr>
    <tr>
      <td colspan="2"><b>Cliente:</b></td>
    </tr>
    <tr>
      <td>Nombre:</td>
      <td><xsl:value-of select="Clientes/DatosPersonales/Nombre"/></td>
    </tr>
    <tr>
      <td>Apellidos:</td>
      <td><xsl:value-of select="Clientes/DatosPersonales/Apellidos"/></td>
    </tr>
    <tr>
      <td>Teléfono:</td>
      <td><xsl:value-of select="Clientes/DatosPersonales/Telefono"/></td>
    </tr>
    <tr>
      <td>Dirección:</td>
      <td><xsl:value-of select="concat(Clientes/DatosPersonales/Direccion/Calle, ', ', 
                                        Clientes/DatosPersonales/Direccion/Ciudad, ', ',
                                        Clientes/DatosPersonales/Direccion/CPostal, ', ',
                                        Clientes/DatosPersonales/Direccion/Provincia)"/>
      </td>
    </tr>
    <tr>
      <td>Email:</td>
      <td><xsl:value-of select="Clientes/DatosPersonales/Email"/></td>
    </tr>
  </table>
  <br/>
</xsl:template>

</xsl:stylesheet>
