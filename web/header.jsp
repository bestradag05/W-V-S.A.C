<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>W&V</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" href="imagenes/favicon.png"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/themify-icons.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/hamburgers.min.css">
        <!--===============================================================================================-->
        <!--<link rel="stylesheet" type="text/css" href="css/animsition.min.css">-->
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/slick.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/lightbox.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link href="css/icheck-bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link href="css/toastr.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="">

        <nav class="navbar navbar-expand-lg fixed-top navbar-black p-t-26">

            <!-- Logo2 -->
            <div class="container-fluid d-block">
                <div class="row w-100 justify-content-between  ">
                    <div class="col-md-4 redes-sociales ">
                        <a href="#" class="topbar-social-item fa fa-facebook"></a>
                        <a href="#" class="topbar-social-item fa fa-instagram"></a>
                        <a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
                        <a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
                        <a href="#" class="topbar-social-item fa fa-youtube-play"></a>
                    </div>
                    <div class="col-6 col-md-4 text-center">
                        <a href="index.html" class="logo2 font-weight-bold  ">
                            W&V Negocios y Servicios S.A.C

                        </a>
                    </div>

                    <div class="col-4  col-md-4">
                        <div class="topbar-child2">
                            <span class="topbar-email">
                                <s:if test="mensajeError!=''">
                                    <s:label name="mensajeError" cssClass="msgError"/>
                                </s:if>
                                <s:else>
                                    <s:label name="#session.NombreClienteCompleto" />
                                </s:else>
                                <s:hidden name="resultado" />
                            </span>

                            <div class="dropdown ml-md-3">
                                <button  class="dropdown-toggle" type="button" id="dropdownUsuario" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img src="imagenes/icon-header-01.png" class="header-icon1" alt="ICON">
                                </button>
                                <div class="dropdown-menu " aria-labelledby="dropdownUsuario" >
                                    <s:if test="#session.seccion==0">
                                        <button type="button" class="dropdown-item" data-toggle="modal" data-target="#loginModal">Iniciar Sesi�n</button>
                                        <button type="button" class="dropdown-item" data-toggle="modal" data-target="#registrarseModal">Registrarse</button>
                                    </s:if>
                                    <s:elseif test="#session.seccion==1">
                                        <s:url id="lnkbuscar" action="buscarClie">
                                            <s:param value="#session.idClie" name="cliente.idCliente"/>
                                            <s:param value="1" name="op"/>
                                        </s:url>
                                        <s:a  href="%{lnkbuscar}" cssClass="dropdown-item">Mi cuenta</s:a>
                                            <button type="button" class="dropdown-item">Cerrar Sesi�n</button>

                                    </s:elseif>
                                    <s:else>
                                        <button type="button" class="dropdown-item" data-toggle="modal" data-target="#loginModal">Iniciar Sesi�n</button>
                                        <button type="button" class="dropdown-item" data-toggle="modal" data-target="#registrarseModal">Registrarse</button>
                                    </s:else>



                                </div>
                            </div>

                            <span class="linedivide1"></span>
                            <div class="header-wrapicon2 m-r-10">
                                <!--Logo de Carrito de compras-->
                                <img src="imagenes/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
                                <span class="header-icons-noti">0</span>

                                <!--Contenido de Carrito de compras-->
                                <div class="header-cart header-dropdown">

                                    <ul class="header-cart-wrapitem">
                                        <s:iterator value="#session.lstLinea">
                                            <li class="header-cart-item">
                                                <div class="d-none d-md-block header-cart-item-img">
                                                    <img src="admin/imagenes/<s:property value="proObj.imagen" />" alt="IMG">
                                                </div>

                                                <div class="header-cart-item-txt w-50">
                                                    <a href="#" class="header-cart-item-name">
                                                        <s:property value="proObj.nombre" />
                                                    </a>

                                                    <span class="header-cart-item-info">
                                                        <s:property value="can" /> x <s:property value="proObj.precioVenta" />
                                                    </span>
                                                </div>
                                                    
                                                    <div>
                                                         <s:url var="LnkQuitar" action="QuitarDelCarro" >
                                                            <s:param value="proObj.idProducto" name="proObj.idProducto" /> 
                                                        </s:url>
                                                        <s:a href="%{LnkQuitar}">
                                                            <i class="fas fa-times"></i>
                                                        </s:a>
                                                    
                                                    
                                                    </div>
                                            </li>   

                                        </s:iterator>
                                    </ul>

                                    <div class="header-cart-total">
                                        Total: <s:property value="#session.total" />
                                    </div>

                                    <div class="header-cart-buttons">
                                        <div class="header-cart-wrapbtn">

                                            <a href="carro.jsp" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                                Ver Carro
                                            </a>
                                        </div>

                                        <div class="header-cart-wrapbtn">

                                            <a href="#" id="btn-quitar" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                                Quitar
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav-principal" aria-expanded="true" aria-label="Navegaci�n Principal">
                        <i class="fa fa-bars" style="font-size:1.5rem;"></i>
                    </button>

                </div>

                <div id="nav-principal" class="navbar-collapse mt-3 mt-lg-0 collapse " style="">
                    <!-- Menu -->
                    <nav class="navegacion-principal nav justify-content-center container
                         flex-column flex-lg-row text-center" id="menu-principal" >


                        <a href="index.html" class="nav-link">Home</a>


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categor�a
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <s:iterator value="lstCategoria">
                                    <s:if test="idCategoria==categoriaSuperior">
                                        <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" data-toggle="dropdown" href="#"><s:property value="nombre"/></a>
                                            <s:set var="idCat" value="idCategoria"></s:set> 
                                        </s:if>

                                        <ul class="dropdown-menu">

                                            <s:iterator value="lstCategoria">
                                                <s:if test="idCategoria!=categoriaSuperior&&categoriaSuperior==#idCat">
                                                    <a class="dropdown-item" href="#"><s:property value="nombre"/></a>
                                                </s:if>

                                            </s:iterator>

                                        </ul>
                                    </li>

                                </s:iterator>

                            </ul>
                        </li>


                        <div class="dropdown drophover">
                            <a href="#" class="nav-link" id="dropMarca" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Marca</a>

                            <div class="dropdown-menu" aria-labelledby="dropMarca">
                                <s:iterator value="lstMarca">
                                    <a class="dropdown-item" href="#"><s:property value="nombre"/></a>
                                </s:iterator>
                            </div>
                        </div>




                        <a href="cart.html" class="nav-link">Caracteristicas</a>



                        <a href="blog.html" class="nav-link">Blog</a>



                        <a href="about.html" class="nav-link">Acerca de</a>



                        <a href="contact.html" class="nav-link">Contacto</a>


                    </nav>
                </div>
            </div>

        </nav>
        <!-- Header -->

        <!--Inicio Modal Para inicio de sesi�n -->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header justify-content-center border-bottom-0">
                        <div class="social-auth-links text-center  mb-3 mt-4">
                            <a href="#" class="btn  btn-primary my-3 my-md-0">
                                <i class="fa fa-facebook mr-2"></i> Sign in using Facebook
                            </a>
                            <a href="#" class="btn  btn-danger">
                                <i class="fa fa-google-plus mr-2"></i> Sign in using Google+
                            </a>
                        </div>

                    </div>
                    <div class="modal-body pt-0">
                        <p class="text-center">- OR -</p>
                        <s:form  action="ingresoCliente" id="form_login"  styleId="acc" theme="simple">
                            <div class="form-group">
                                <label for="Email">Correo Electronico</label>
                                <s:textfield cssClass="form-control" name="cliente.email" id="email" placeholder="Ingrese Email"/>
                            </div>
                            <div class="form-group">
                                <label for="Password">Password</label>
                                <s:password cssClass="form-control" name="cliente.password" id="password" placeholder="Ingrese Password"/>
                            </div>
                            <div class="form-group">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input ml-0" id="dropdownCheck">
                                    <label class="form-check-label" for="Check">
                                        Recordar Contrase�a
                                    </label>
                                </div>
                            </div>

                            <s:submit id="ingresar" styleId="btnreg" cssClass="btn btn-primary  toastrDefaultError" value="Iniciar Sesi�n" />
                        </s:form>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Olvidaste tu contrase�a?</a>
                    </div>


                </div>
            </div>
        </div>

        <!--Fin Modal Para inicio de sesi�n -->


        <!--Inicio Modal Para Registrarse-->
        <div class="modal fade" id="registrarseModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header justify-content-center border-bottom-0">
                        <div class="social-auth-links text-center  mb-3 mt-4">
                            <a href="#" class="btn  btn-primary my-3 my-md-0">
                                <i class="fa fa-facebook mr-2"></i> Sign in using Facebook
                            </a>
                            <a href="#" class="btn  btn-danger">
                                <i class="fa fa-google-plus mr-2"></i> Sign in using Google+
                            </a>
                        </div>

                    </div>
                    <div class="modal-body pt-0">
                        <p class="text-center">- OR -</p>

                        <s:form action="registrarse" theme="simple">
                            <div class="input-group mb-3 mt-3">
                                <s:textfield cssClass="form-control" name="cliente.nombres" id="nombres" placeholder="Ingrese Nombres"/>
                            </div>
                            <div class="input-group mb-3">
                                <s:textfield cssClass="form-control" name="cliente.apellidos" id="apellidos" placeholder="Ingrese Apellidos"/>

                            </div>
                            <div class="input-group mb-3">
                                <s:textfield  cssClass="form-control" name="cliente.email" id="email" placeholder="Ingrese Email"/>

                            </div>
                            <div class="input-group mb-3">
                                <s:password cssClass="form-control" name="cliente.password" id="password" placeholder="Ingrese Password"/>

                            </div>
                            <div class="input-group mb-3">
                                <s:password cssClass="form-control" name="password2" id="password2" placeholder="Confirmar Password"/>

                            </div>
                            <div class="row">
                                <!-- /.col -->
                                <div class="col-8">
                                    <div class="icheck-primary">
                                        <input type="checkbox" id="agreeTerms" name="terms" value="agree">
                                        <label for="agreeTerms">
                                            Acepto los  <a href="#">Terminos</a>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <s:submit id="enviar"  cssClass="btn btn-primary btn-block toastrDefaultError" value="Enviar"/>
                                </div>
                                <!-- /.col -->
                            </div>
                        </s:form>


                    </div>
                </div>
            </div>
        </div>

        <!--Fin Modal Para Registrarse -->