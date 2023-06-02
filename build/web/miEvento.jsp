<%-- 
    Document   : miEvento
    Created on : Apr 29, 2023, 10:27:54 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script src="jquery-1.12.4.min.js" type="text/javascript"></script>
<!DOCTYPE html>
<html>
    <head>
        <!--<link rel="stylesheet" href="crearEvnt.css">
        --><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evento Personalizado</title>
        <script>
    function checkPrice() {
                var p = Math.round(Math.random()*2000+500);

                document.getElementById("precio").textContent="Precio: "+p;                     
            }
</script>
    </head>
    <body>
        <header >
		
		<nav class="naveg">
                    <h1 class="logo">U<span>party</span> </h1>
			<ul class="navbar">
				<li><a href="#eventos">Eventos</a></li>
				<li><a href="#decoracion">Decoración</a></li>
				<li><a href="#musica">Música</a></li>
				<li><a href="#catering">Catering</a></li>
				<li><a href="#audiovisuales">Audiovisuales</a></li>
				<li><a href="#empresas">Empresas</a></li>
<s:form action="unlog" theme="simple" >
                                <s:submit cssClass="login" name="unlog" value="Cerrar Sesion"/>
                                </s:form>
			</ul>
		</nav>
	</header>
        <h1>Eventos</h1>

        <label>Personaliza tu evento:</label>
        <s:form action="eventoP">
                <s:label name="evento" value="Evento:"></s:label>
                <s:select name="eventos" id="eventos" list="%{tipos}" onchange="checkPrice()"/>
                <s:label name="catering" value="Cátering:"></s:label>
                <s:select name="eCat" id="eCat" list="%{empresasC.{nombre}}" onchange="checkPrice()"/>
                <s:label name="musica" value="Música:"></s:label>
                <s:select name="eMus" id="eMus" list="%{empresasM.{nombre}}" onchange="checkPrice()"/>
                <s:label name="decoracion" value="Decoración:"></s:label>
                <s:select name="eDec" id="eDec" list="%{empresasD.{nombre}}" onchange="checkPrice()"/>
                <s:label name="audiovisuales" value="Audiovisuales:"></s:label>
                <s:select name="eAud" id="eAud" list="%{empresasA.{nombre}}" onchange="checkPrice()"/>
                <s:label name="precio" id="precio" value="Precio: %{precio}"/>
                <s:hidden name="precio" value="%{precio}"/>
            <s:submit name="eventoPTrigger" value="Especificar detalles"/>
        </s:form>
    </body>
</html>
