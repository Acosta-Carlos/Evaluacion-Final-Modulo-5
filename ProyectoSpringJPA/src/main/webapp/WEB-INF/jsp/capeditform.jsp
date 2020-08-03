<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>      

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS JS-->
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
    <spring:url value="/resources/css/estilos.css" var="estilosCSS" />
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    
    <link href="${bootstrapCSS}" rel="stylesheet" />
    <link href="${estilosCSS}" rel="stylesheet" />
    <script src="${jqueryJS}"></script>
    <title>Editar Capacitacion</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Editar Capacitacion</h2>
        </header>
    </div> 
     <form:form method="post" action="/ProyectoSpringJPA/capeditsave" modelAttribute="capacitacion">
      <form:errors path = "*" cssClass = "errorblock" element="div" />
      <div class="container">
          <div class="row">
             <label class="col-4 lead font-weight-normal">Fecha:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              	<form:errors path = "fecha" cssClass = "error" />
              </div>              
              <form:input type="date" class="col-6 input-group" path="fecha"/>
          </div>
          <br><br>
          <div class="row">
              <label class="col-4 lead font-weight-normal">Hora:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              	<form:errors path = "hora" cssClass = "error" />
              </div>
              <form:input type="time" class="col-6 input-group" path="hora"/>
          </div>
          <br><br>
          <div class="row">
              <label class="col-4 lead font-weight-normal">Numero asistentes:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              	<form:errors path = "numasistentes" cssClass = "error" />
              </div>
              <form:input type="number" class="col-6 input-group" path="numasistentes"/>
          </div>
          <br><br>
          <div class="row">
              <label class="col-4 lead font-weight-normal">ID Visitas:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              	<form:errors path = "visitas_idvisita" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="visitas_idvisita"/>
          </div>
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
               <a class="btn btn-warning col-4" href="/ProyectoSpringJPA/viewcap" role="button">Volver</a>
                <form:hidden path="idcapacitacion"/>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-warning col-4" value="Editar capacitacion"/>
               </div>
           </div>          
        </div>
      </form:form> 
      <div class="container" style="height: 50px;"></div>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    <spring:url value="/resources/js/popper.min.js" var="popperJS"/>
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
    
    <script src="${jqueryJS}"></script>
    <script src="${popperJS}"></script>
    <script src="${bootstrapJS}"></script>
  </body>
</html>