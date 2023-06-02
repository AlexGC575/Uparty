<%-- 
    Document   : cine
    Created on : Apr 30, 2023, 1:39:32 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="eventos.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cines</title>
    </head>
    <body>
        <header >

                <nav class="naveg">
                    <h1 class="logo">U<span>party</span> </h1>
                    <ul class="navbar">
                        <li><a href="eventos.jsp">Eventos</a></li>
                        <li><a href="decoracion.jsp">Decoración</a></li>
                        <li><a href="musica.jsp">Música</a></li>
                        <li><a href="catering.jsp">Catering</a></li>
                        <li><a href="audiovisuales.jsp">Audiovisuales</a></li>
                        <li><a href="empresas.jsp">Empresas</a></li>
                            <s:form action="irPerfil" theme="simple" >
                                <s:submit cssClass="login" name="irperfil" value="Ver Perfil"/>
                            </s:form>
                    </ul>
                </nav>
            </header>
        <h1>Cines</h1>
        <s:form action="cine">
            <s:iterator value="especializaciones" var="e">
                <details>
                    <summary>Cine <s:property value="#e.nombre"/></summary>
                    <li>Cátering: <s:property value="#e.catering"/></li>
                    <li>Música: <s:property value="#e.musica"/></li>
                    <li>Decoración: <s:property value="#e.decoracion"/></li>
                    <li>Audiovisuales: <s:property value="#e.audiovisuales"/></li>
                    <li>Religión: <s:property value="#e.religion"/></li>
                    <li>Precio estándar: <s:property value="#e.precio"/></li>
                </details>
                <s:radio id="radio" name="elegirCine" list="#e.getNombre()"/>
            </s:iterator>
            <s:submit name="cineTrigger" value="Especificar detalles"/>
        </s:form>
    </body>
</html>
