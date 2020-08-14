<%@include file="../principal/sidebar.jsp" %>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header" id="sectionAjax">
        <div class="container-fluid">

            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="font-weight-bold">Cambiar Contrase�a</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                        <li class="breadcrumb-item active">Cambiar Contrase�a</li>
                    </ol>
                </div> 
            </div>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">

            <div class="row">

                <div class="col-md-12">
                    <div class="card card-text">
                        <div class="card-header">
                            <h3 class="card-title font-weight-bold">Cambiar</h3>
                        </div>
                        <s:form id="form_pass" action="cambiarPasswordInAdmin" theme="simple" >
                            <div class="card-body">
                                <div class="row ">
                                    <div class="col-md-12">
                                        <div class="form-group">

                                            <label>Contrase�a Actual</label>
                                           <label><s:if test="hasActionErrors()">
                                <s:actionerror cssClass=" text-danger font-weight-bold mr-6" />
                                               </s:if></label>
                                            <div class="input-group">
                                                <s:password type="password"  name="passwordActual" id="password1" cssClass="form-control" required="required" />
                                                <div class="input-group-append">
                                                    <button class="btn btn-primary" type="button" onclick="mostrarPassword('password1')"> <span  id="show_password1" class="fa fa-eye-slash icon"></span> </button>
                                                </div>
                                            </div></div>
                                        <div class="form-group">
                                            <label>Nueva Contrase�a</label>
                                            <div class="input-group">
                                                <s:password name="admin.password" id="password2" cssClass="form-control" pattern="^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$" required="required" />
                                                <div class="input-group-append">
                                                    <button  class="btn btn-primary" type="button" onclick="mostrarPassword('password2')"> <span id="show_password2" class="fa fa-eye-slash icon"></span> </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Confirmar Contrase�a</label>
                                            <div class="input-group">
                                                <input type="password" name="passwordNuevo" id="password3" Class="form-control" required="required" />
                                                <div class="input-group-append">
                                                    <button  class="btn btn-primary" type="button" onclick="mostrarPassword('password3')"> <span id="show_password3" class="fa fa-eye-slash icon"></span> </button>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                            <div class="card-footer text-center">
                                <pre style="display:none" id="errorPassword" class="text-danger font-weight-bold">
*La contrase�a debe tener 8 caracteres como m�nimo entre n�meros, min�sculas y may�sculas*
*No debe contener caracteres extra�os ni espacios en blanco*
                                </pre>
                                <s:submit id="cambiar" value="Guardar" cssClass="btn btn-info"/>

                            </div>


                        </s:form>   
                    </div>
                </div>
            </div>
    </section>

</div>

<%@include file="../principal/footer.jsp" %>