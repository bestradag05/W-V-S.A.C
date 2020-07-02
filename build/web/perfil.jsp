<%@include file="header.jsp" %>


<div class="container mb-5">
    <div class="row">
        <div class="col-12 encabezado-perfilCliente mt-5 py-4 px-3 ">
            <h1 class="text-light">Mi cuenta: <s:label name="#session.NombreClienteCompleto" /></h1>
            <span>Datos y preferencias</span>
        </div>
        <div class="col-4 list-group pr-0 barra-lateral-perfilC">
            <s:url id="lnkListarPedidoCliente" action="listarPedidoPorCliente">
                <s:param value="#session.idClie" name="cliente.idCliente"/>
                <s:param value="3" name="op"/>
            </s:url>
            <s:a href="%{lnkListarPedidoCliente}" cssClass="list-group-item list-group-item-action"> <i class="fa fa-shopping-cart"></i> Mis Compras</s:a>

            <s:url id="lnkbuscar" action="buscarClie">
                <s:param value="#session.idClie" name="cliente.idCliente"/>
                <s:param value="2" name="op"/>
            </s:url>
            <s:a href="%{lnkbuscar}" cssClass="list-group-item list-group-item-action"><i class="fa fa-user-cog"></i> Datos Personales</s:a>

            <a href="cambiar_password.jsp" Class="list-group-item list-group-item-action"><i class="fa fa-lock"></i> Cambiar Contrase�a</a>
            </div>



        <s:if test="op==2">
            <div class="col-8 contenido-cliente pt-3">
                <h3 class="mb-5">Datos Personales</h3>
                <s:form theme="simple" action="actualizarClie" method="POST">
                    <div class="row" >
                        <div class="col-6">
                            <s:hidden name="cliente.idCliente" />
                            <label>Nombre</label>
                            <s:textfield name="cliente.nombres" cssClass="form-control mb-5" />
                            <label>Dni</label>
                            <s:textfield name="cliente.dni" cssClass="form-control mb-5" />

                        </div>
                        <div class="col-6">

                            <label>Apellidos</label>
                            <s:textfield name="cliente.apellidos" cssClass="form-control mb-5" />
                            <label>Celular</label>
                            <s:textfield name="cliente.numCelular" cssClass="form-control mb-5" />
                        </div>
                        <div class="col-6">
                            <label>Direcci�n</label>
                            <s:textfield name="cliente.direccion" cssClass="form-control mb-5" />
                            
                        </div>
                        <div class="col-6">
                            <label>Email</label>
                            <s:textfield name="cliente.email" cssClass="form-control mb-5" />
                        </div>
                        <div class="col-12 text-center pb-4">
                            <s:submit cssClass="btn btn-warning " value="Actualizar" />
                        </div>
                    </div>
                </s:form>
            </div> 
        </s:if>
        <s:elseif test="op==3">
            <div class="col-8 contenido-cliente pt-3">
                <s:iterator value="lstDetalle">
                    <div class="row">

                        <div class="col-6">
                            <h3>Numero de Orden: <span><s:property value="pedido.numero" /></span></h3>
                            <div class="detalle my-3">
                                <img class="img-fluid img-pro-pefil" src="imagenes/<s:property value="producto.imagen" />">
                                <div class="d-inline-block ml-2">
                                    <h4 class="mb-2"><s:property value="producto.nombre"/></h4>
                                    <span class="text-success"><s:property value="producto.precioVenta"/></span>
                                    <p><s:property value="cantidad" /> unidad</p>
                                </div>
                            </div>



                        </div>
                        <div class="col-6 d-flex justify-content-end">
                            <div class="d-block">
                                <p >Total: S/<s:property value="pedido.total"/></p>
                                <p class="d-block">Fecha de compra: <s:property value="pedido.fecha"/></p>
                                <button class="btn btn-warning mt-2 text-light"> Ver comprobante</button>
                            </div>

                        </div>
                    </div>
                </s:iterator>
            </div>
        </s:elseif>
            
        <s:else>
            <div class="col-8 text-center principal">

                <img src="imagenes/logo2.png" class="img-fluid logo-perfil">

            </div> 
        </s:else>
    </div>

</div>

<div id="prueba"></div>
<%@include file="footer.jsp" %>
<script src="js/ajax.js" type="text/javascript"></script>