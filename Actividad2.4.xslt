<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Productos Vendidos</title>
    <style>
      /* Estilos para las tablas */
      .table-container {
        margin-bottom: 20px;
      }
      table {
        width: 100%;
        border-collapse: collapse;
        font-family: Arial, sans-serif;
        font-size: 14px;
        color: #333;
        background-color: #f8f8f8;
      }
      th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
      }
      th {
        background-color: #f2f2f2;
      }
      /* Estilos específicos para cada tabla */
      .primer-trimestre {
        color: #fff;
        background-color: #4CAF50;
        font-weight: bold;
      }
      .ultimo-trimestre {
        color: #fff;
        background-color: #f44336;
        font-weight: bold;
      }
    </style>
  </head>
  <body>
    <div class="table-container">
      <h2>Productos Vendidos en el Primer Trimestre de 2020</h2>
      <table class="primer-trimestre">
        <tr>
          <th>Nombre del Producto</th>
          <th>Referencia</th>
          <th>Precio</th>
          <th>Unidades</th>
        </tr>
        <xsl:apply-templates select="//Pedido[substring(FechaCompra, 1, 4) = '2021' and substring(FechaCompra, 6, 2) &lt;= 03]/Producto"/>
      </table>
    </div>
    <div class="table-container">
      <h2>Productos Vendidos en el Último Trimestre de 2021</h2>
      <table class="ultimo-trimestre">
        <tr>
          <th>Nombre del Producto</th>
          <th>Referencia</th>
          <th>Precio</th>
          <th>Unidades</th>
        </tr>
        <xsl:apply-templates select="//Pedido[substring(FechaCompra, 1, 4) = '2022' and substring(FechaCompra, 6, 2) >= 10]/Producto"/>
      </table>
    </div>
  </body>
  </html>
</xsl:template>

<xsl:template match="Producto">
  <tr>
    <td><xsl:value-of select="NombreProducto"/></td>
    <td><xsl:value-of select="Referencia"/></td>
    <td><xsl:value-of select="Precio"/></td>
    <td><xsl:value-of select="Unidades"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>
