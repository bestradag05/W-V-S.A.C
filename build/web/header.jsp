
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
                                <s:if test="hasActionErrors()">
                                    <div class="errorDiv" >
                                        <Cate />
                                    </div>
                                </s:if>
                                <s:else>
                                    <s:label name="#session.nombres+ ' '+#session.apellidos" />
                                </s:else>

                            </span>

                            <div class="dropdown ml-md-3">
                                <button  class="dropdown-toggle" type="button" id="dropdownUsuario" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img src="imagenes/icon-header-01.png" class="header-icon1" alt="ICON">
                                </button>
                                <div class="dropdown-menu " aria-labelledby="dropdownUsuario" >

                                    <s:if test="#session.seccion==1">
                                        <a  href="perfil.jsp" Class="dropdown-item">Mi cuenta</a>
                                        <a href="cerrarSesionClie" class="dropdown-item">Cerrar Sesi�n</a>

                                    </s:if>
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
                                        <li class="header-cart-item">
                                            <div class="d-none d-md-block header-cart-item-img">
                                                <img src="imagenes/item-cart-01.jpg" alt="IMG">
                                            </div>

                                            <div class="header-cart-item-txt">
                                                <a href="#" class="header-cart-item-name">
                                                    White Shirt With Pleat Detail Back
                                                </a>

                                                <span class="header-cart-item-info">
                                                    1 x $19.00
                                                </span>
                                            </div>
                                        </li>

                                        <li class="header-cart-item">
                                            <div class="d-none d-md-block header-cart-item-img">
                                                <img src="imagenes/item-cart-02.jpg" alt="IMG">
                                            </div>

                                            <div class="header-cart-item-txt">
                                                <a href="#" class="header-cart-item-name">
                                                    Converse All Star Hi Black Canvas
                                                </a>

                                                <span class="header-cart-item-info">
                                                    1 x $39.00
                                                </span>
                                            </div>
                                        </li>

                                        <li class="header-cart-item">
                                            <div class="d-none d-md-block header-cart-item-img">
                                                <img src="imagenes/item-cart-03.jpg" alt="IMG">
                                            </div>

                                            <div class="header-cart-item-txt">
                                                <a href="#" class="header-cart-item-name">
                                                    Nixon Porter Leather Watch In Tan
                                                </a>

                                                <span class="header-cart-item-info">
                                                    1 x $17.00
                                                </span>
                                            </div>
                                        </li>
                                    </ul>

                                    <div class="header-cart-total">
                                        Total: $75.00
                                    </div>

                                    <div class="header-cart-buttons">
                                        <div class="header-cart-wrapbtn">
                                            Button 
                                            <a href="cart.html" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                                View Cart
                                            </a>
                                        </div>

                                        <div class="header-cart-wrapbtn">
                                            Button 
                                            <a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                                Check Out
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

                        <div class="dropdown drophover">
                            <a href="#" class="nav-link" id="dropCate" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categor�a</a>

                            <div class="dropdown-menu" aria-labelledby="dropCate">
                                <s:iterator value="lstCategoria">
                                    <a class="dropdown-item" href="#"><s:property value="nombre"/></a>
                                </s:iterator>
                            </div>
                        </div>
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
                        <div class="social-auth-links text-center">

                            <div onlogin="checkLoginState();" appId="282898703055776" scope="public_profile,email" id="facebook-login-button" class="fb-login-button" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="false" data-use-continue-as="true" data-width=""></div>
                        </div>
                        <div id="fbStatus">

                        </div>
                    </div>
                    <div class="modal-body pt-0">
                        <s:form  action="ingresoCliente" id="form_login"  styleId="acc" theme="simple">
                            <div class="form-group">

                                <s:textfield cssClass="form-control" name="cliente.email" id="email" placeholder="Ingrese Email"/>
                            </div>
                            <div class="form-group">
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

                            <s:submit id="ingresar" styleId="btnreg" cssClass="btn btn-primary btn-block  toastrDefaultError" value="Iniciar Sesi�n" />
                            <div class="text-center"> 
                                <button  type="button" Class="btn btn-link" data-toggle="modal" data-target="#registrarseModal" >Registrese</button>
                            </div>
                        </s:form>

                    </div>
                    <div class="modal-footer">
                        <a Class="btn btn-link" href="#">Olvid� mi contrase�a</a>
                        <a Class="btn btn-link" href="admin/seguridad/login.jsp">Iniciar como administrador</a>
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
                                <s:password cssClass="form-control" name="confirmarPass" id="confirmarPass" placeholder="Confirmar Password"/>

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
                                    <s:submit  cssClass="btn btn-primary btn-block toastrDefaultError" value="Enviar"/>
                                </div>
                                <!-- /.col -->
                            </div>
                        </s:form>


                    </div>
                </div>
            </div>
        </div>

        <!--Fin Modal Para Registrarse -->

        <!--Inicio Modal Para Restablecer Password -->
        <div class="modal fade" id="restablecerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header justify-content-center border-bottom-0">
                    </div>
                    <div class="modal-body pt-0">
                        <s:form  action="restablecerPassword" id="form_rest"  styleId="acc" theme="simple">
                            <div class="form-group">

                                <s:textfield cssClass="form-control" name="cliente.email" id="email" placeholder="Ingrese Email"/>
                            </div>
                            <div class="form-group">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input ml-0" id="dropdownCheck">
                                    <label class="form-check-label" for="Check">
                                        Recordar Contrase�a
                                    </label>
                                </div>
                            </div>

                            <s:submit id="ingresar" styleId="btnreg" cssClass="btn btn-primary btn-block  toastrDefaultError" value="Iniciar Sesi�n" />
                            <div class="text-center"> 
                                <button  type="button" Class="btn btn-link" data-toggle="modal" data-target="#registrarseModal" >Registrese</button>
                            </div>
                        </s:form>

                    </div>
                    <div class="modal-footer">
                        <a Class="btn btn-link" href="#">Olvid� mi contrase�a</a>
                        <a Class="btn btn-link" href="admin/seguridad/login.jsp">Iniciar como administrador</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin Modal Para Restablecer Password -->

