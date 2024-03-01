<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Factura</title>
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
    <h1>Factura</h1>
    <h2>Información del Pedido</h2>
    <table>
      <tr>
        <td><b>Número de Pedido:</b></td>
        <td><xsl:value-of select="//Pedido/NumeroPedido"/></td>
      </tr>
      <tr>
        <td><b>Fecha de Compra:</b></td>
        <td><xsl:value-of select="//Pedido/FechaCompra"/></td>
      </tr>
      <tr>
        <td><b>Fecha de Entrega:</b></td>
        <td><xsl:value-of select="//Pedido/FechaEntrega"/></td>
      </tr>
    </table>
    <h2>Información del Cliente</h2>
    <table>
      <tr>
        <td><b>Nombre:</b></td>
        <td><xsl:value-of select="//Pedido/Clientes/DatosPersonales/Nombre"/></td>
      </tr>
      <tr>
        <td><b>Apellidos:</b></td>
        <td><xsl:value-of select="//Pedido/Clientes/DatosPersonales/Apellidos"/></td>
      </tr>
      <tr>
        <td><b>Teléfono:</b></td>
        <td><xsl:value-of select="//Pedido/Clientes/DatosPersonales/Telefono"/></td>
      </tr>
      <tr>
        <td><b>Dirección:</b></td>
        <td><xsl:value-of select="concat(//Pedido/Clientes/DatosPersonales/Direccion/Calle, ', ', 
                                          //Pedido/Clientes/DatosPersonales/Direccion/Ciudad, ', ',
                                          //Pedido/Clientes/DatosPersonales/Direccion/CPostal, ', ',
                                          //Pedido/Clientes/DatosPersonales/Direccion/Provincia)"/>
        </td>
      </tr>
      <tr>
        <td><b>Email:</b></td>
        <td><xsl:value-of select="//Pedido/Clientes/DatosPersonales/Email"/></td>
      </tr>
    </table>
    <h2>Información del Producto</h2>
    <table>
      <tr>
        <td><b>Nombre del Producto:</b></td>
        <td><xsl:value-of select="//Pedido/Producto/NombreProducto"/></td>
      </tr>
      <tr>
        <td><b>Referencia:</b></td>
        <td><xsl:value-of select="//Pedido/Producto/Referencia"/></td>
      </tr>
      <tr>
        <td><b>Precio:</b></td>
        <td><xsl:value-of select="//Pedido/Producto/Precio"/></td>
      </tr>
      <tr>
        <td><b>Unidades:</b></td>
        <td><xsl:value-of select="//Pedido/Producto/Unidades"/></td>
      </tr>
    </table>
    <h2>Total a Pagar</h2>
    <p>Total: <xsl:value-of select="//Pedido/TotalFactura"/></p>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
