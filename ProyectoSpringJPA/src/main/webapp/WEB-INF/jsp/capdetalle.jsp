<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle Capacitaci�n</title>
</head>
<body>

<h1>Detalle Capacitaci�n</h1>

ID Capacitaci�n: ${capData.getIdcapacitacion()}<br/>
fecha: ${capData.getFecha()}<br/>
hora: ${capData.getHora()}<br/>
N�mero de asistentes: ${capData.getNumasistentes()}<br/>
id Visita: ${capData.getVisitas_idvisita()}<br/>
<br>
<a class="btn bt-warning col-4" href="/ProyectoSpringJPA/viewcap" role="button">Volver</a>
</body>
</html>