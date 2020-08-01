<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>     
<!doctype html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle Pago de Cliente</title>
    <!-- Bootstrap CSS-->
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
    
    <link href="${bootstrapCSS}" rel="stylesheet" />
</head>
<body>

<div class="pt-md-5 pb-md-4 mx-auto">
    </div>

    <div class="container">
      <div class="card-deck mb-3">
        <div class="card mb-4 box-shadow">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">Detalle Pago de Cliente</h4>
          </div>
          <div class="card-body">
            <ul class="list-unstyled mt-3 mb-4">
              <li>ID Pago: ${pagosData.getIdpago()}</li>
              <li>A�o/Mes: ${pagosData.getMesanio()}</li>
              <li>Monto Regular: $${pagosData.getMontoregular()}</li>
              <li>Monto Adicionales: $${pagosData.getMontoadicionales()}</li>
            </ul>
          </div>
          <div class="card-body">
            <ul class="list-unstyled mt-3 mb-4">
              <li>ID Cliente: ${pagosData.cliente.id}</li>
              <li>Nombre: ${pagosData.cliente.nombre}</li>
              <li>Telefono: ${pagosData.cliente.telefono}</li>
              <li>Correo electronico: ${pagosData.cliente.correoelectronico}</li>
              <li>Rubro: ${pagosData.cliente.rubro}</li>
              <li>Direcci�n: ${pagosData.cliente.direccion}</li>              
            </ul>            
            <a class="btn btn-primary mb-1" href="/ProyectoSpringJPA/viewpag">Volver al Listado</a>
          </div>
        </div>
      </div>
    </div>
  
</body>
</html>
