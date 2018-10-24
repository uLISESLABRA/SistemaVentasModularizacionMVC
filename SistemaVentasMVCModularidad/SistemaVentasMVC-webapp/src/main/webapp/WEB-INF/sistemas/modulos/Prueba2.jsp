<%-- 
    Document   : Prueba2
    Created on : 19-sep-2018, 20:46:49
    Author     : Ulises
--%>
        
        <h2>Welcome to Home page 2  </h2>
        <a href="/pers" class="btn btn-danger">Ir Persona</a>
        
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
    
    <c:if test="${!empty ListaProducto}">
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">#</th>
          <th scope="col">Nombre</th>
          <th scope="col">Descripcion</th>         
          <th scope="col">Precio</th>
         
          
        </tr>
      </thead>
      <tbody>
          <c:forEach items="${ListaProducto}" var="dato">
                <tr>
                  <td>${dato.idProducto}</td>
                  <td>${dato.nombre}</td>
                  <td>${dato.descripcion}</td>                  
                  <td>${dato.precio}</td>                
                </tr>
        </c:forEach> 
      </tbody>
    </table>   
    </c:if>