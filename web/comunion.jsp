<%-- 
    Document   : comunion
    Created on : Apr 29, 2023, 12:08:37 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="eventos.css"/>
        <link rel="stylesheet" href="style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comuniones</title>
    </head>
    <body>
         <div class="eventos">
      <header >
		
		<nav class="naveg">
                    <h1 class="logo">U<span>party</span> </h1>
			<ul class="navbar">
				<li><a href="eventos.jsp">Eventos</a></li>
				<li><a href="decoracion.jsp">Decoración</a></li>
				<li><a href="musica.jsp">Música</a></li>
				<li><a href="catering.jsp">Catering</a></li>
				<li><a href="audiovisuales.jsp">Audiovisuales</a></li>
				<s:form action="consultarEmpresas" theme="simple" >
                                <s:submit cssClass="login" name="irEmpresa" value="Empresas"/>
                            </s:form>
                                
                                <s:if test="#session.Usuario!=null">         
                                <s:form action="irPerfil" theme="simple" >
                                <s:submit cssClass="login" name="irperfil" value="Ver Perfil"/>
                            </s:form>
                                </s:if>
                                <s:else >
                                <s:form action="irLogin" theme="simple" >
                                <s:submit cssClass="login" name="irlogin" value="Iniciar Sesión"/>
                            </s:form>
                                </s:else>
			</ul>
		</nav>
	</header>
                <div class="tabla">
        <s:form action="comunion">
            <h2>Comuniones</h2>
            <s:iterator value="especializaciones" var="e">
                <details class="styled">
                   
                    <summary>Comunión <s:property value="#e.nombre"/></summary>
                    <div >
                    <li>Cátering: <s:property value="#e.catering"/></li>
                    <li>Música: <s:property value="#e.musica"/></li>
                    <li>Decoración: <s:property value="#e.decoracion"/></li>
                    <li>Audiovisuales: <s:property value="#e.audiovisuales"/></li>
                    <li>Religión: <s:property value="#e.religion"/></li>
                    <li>Precio estándar: <s:property value="#e.precio"/></li>
                    </div>
                </details>
                <s:radio id="radio" name="elegirComunion" list="#e.getNombre()"/>
            </s:iterator>
            <s:submit cssClass="login" name="comunionTrigger" value="Especificar detalles"/>
        </s:form>
            </div>
             
<footer>
	<p>Derechos reservados &copy; 2023 Uparty</p>
</footer>
           </div> 
    </body>
</html>
