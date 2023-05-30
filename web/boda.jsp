<%-- 
    Document   : boda
    Created on : Apr 29, 2023, 10:27:39 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<link rel="stylesheet" href="crearEvnt.css">
        --><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bodas</title>
    </head>
    <body>
        <h1>Bodas</h1>
        <s:form action="boda">
            <s:iterator value="especializaciones" var="e">
                <details>
                    <summary>Boda <s:property value="#e.nombre"/></summary>
                    <li>Cátering: <s:property value="#e.catering"/></li>
                    <li>Música: <s:property value="#e.musica"/></li>
                    <li>Decoración: <s:property value="#e.decoracion"/></li>
                    <li>Audiovisuales: <s:property value="#e.audiovisuales"/></li>
                    <li>Religión: <s:property value="#e.religion"/></li>
                    <li>Precio estándar: <s:property value="#e.precio"/></li>
                </details>
                <s:radio id="radio" name="elegirBoda" list="#e.getNombre()"/>
            </s:iterator>
            <s:submit name="bodaTrigger" value="Especificar detalles"/>
        </s:form>
    </body>
</html>
