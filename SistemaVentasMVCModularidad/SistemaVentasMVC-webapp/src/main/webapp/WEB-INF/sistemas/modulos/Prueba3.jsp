<%-- 
    Document   : Prueba3
    Created on : 19-sep-2018, 20:47:13
    Author     : Ulises
--%>


        <h2>Welcome to Home page 3</h2>
        <a href="/pers" class="btn btn-primary">Ir Persona</a>
    
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
  <br/>
  Mensaje: 
  ${message}
   <br/>
   
   <p> <spring:message code="welcome.greeting" arguments="${startMeeting}" /> </p> 
   <br/>
   Cantidad Registros: 
    <br/>
    
    <c:if test="${!empty ListaVenta}">
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">#</th>
          <th scope="col">Cliente</th>
          <th scope="col">Fecha</th>         
          <th scope="col">Precio Total</th>
                   
        </tr>
      </thead>
      <tbody>
          <c:forEach items="${ListaVenta}" var="dato">
                <tr>
                  <td>${dato.idVenta}</td>
                  <td>${dato.idPersona}</td>
                  <td>${dato.fecha}</td>                
                  <td>${dato.precioTotal}</td>
                  
                </tr>
        </c:forEach> 
      </tbody>
    </table>   
    </c:if>