<div class="row">
  <div class="col-md-6 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>Empresa</h2>
        <ul class="nav navbar-right panel_toolbox">
          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
          </li>
        </ul>
        <div class="clearfix"></div>
      </div>
      <div class="x_content">
        <br />
        <form id="defaultForm" action="index.php?page=empresa2&mode={{mode}}&EmpresaCodigo={{EmpresaCodigo}}" method="post" class="form-horizontal">
          <div class="form-group">
             <label class="control-label col-md-3 col-sm-3 col-xs-12">Código:</label>
          {{if enabled}}
              <div class="col-md-9 col-sm-9 col-xs-12">
              <input type="text" name="EmpresaCodigo" value="{{EmpresaCodigo}}"
              placeholder="Un Número" />
           </div>
          {{endif enabled}}

          {{ifnot enabled}}
            <b>{{EmpresaCodigo}}</b>
            <input type="hidden" name="EmpresaCodigo" value="{{EmpresaCodigo}}"/>
          {{endifnot enabled}}
       </div>


       <div class="form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12">Razón Social:</label>
            {{ifnot deleting}}
                <div class="col-md-9 col-sm-9 col-xs-12">
                <input type="text" class="form-control" name="EmpresaNombre" value="{{EmpresaNombre}}"/>
           </div>
           {{endifnot deleting}}

            {{if deleting}}
                <b>{{EmpresaNombre}}</b>
                <input type="hidden" name="EmpresaNombre" value="{{EmpresaNombre}}"/>
            {{endif deleting}}
       </div>

       <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Representante Legal:</label>
              {{ifnot deleting}}
                   <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" class="form-control" name="EmpresaRepresentante" value="{{EmpresaRepresentante}}"/>
                  </div>
                    {{endifnot deleting}}

                    {{if deleting}}
                        <b>{{EmpresaRepresentante}}</b>
                        <input type="hidden" name="EmpresaRepresentante" value="{{EmpresaRepresentante}}"/>
                    {{endif deleting}}
       </div>

       <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">Nombre Comercial:</label>
                {{ifnot deleting}}
                <div class="col-md-9 col-sm-9 col-xs-12">
                  <input type="text" class="form-control" name="EmpresaComercial" value="{{EmpresaComercial}}"/>
                </div>
                {{endifnot deleting}}</br>

                {{if deleting}}
                    <b>{{EmpresaComercial}}</b>
                    <input type="hidden" name="EmpresaComercial" value="{{EmpresaComercial}}"/>
                {{endif deleting}}
       </div>


           <div class="form-group">
             <label class="control-label col-md-3 col-sm-3 col-xs-12">RTN</label>
                 {{ifnot deleting}}
                   <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text"  class="form-control" name="EmpresaRTN" value="{{EmpresaRTN}}"/>
                 </div>
                  {{endifnot deleting}}

                  {{if deleting}}
                      <b>{{EmpresaRTN}}</b>
                      <input type="hidden"class="form-control" name="EmpresaRTN" value="{{EmpresaRTN}}"/>
                  {{endif deleting}}
            </div>

            <div class="form-group">
            {{if deleting}}
                <input type="submit" class="btn btn-primary" style="margin-left:27%;" value="Eliminar" name="btnEliminar" />
            {{endif deleting}}
            {{ifnot deleting}}
              <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                <input type="submit"  class="btn btn-success" value="Guardar" name="btnGuardar" />
            {{endifnot deleting}}
            &nbsp;
            <a href="index.php?page=listadoEmpresa" class="btn btn-warning" role="button">Cancelar</a>
           </div>
         </div>
        </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('#defaultForm').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                EmpresaNombre: {
                    message: 'El nombre de la empresa no es válido',
                    validators: {
                        notEmpty: {
                            message: 'Campo Obligatorio, no puede estar vacio'
                        },
                        stringLength: {
                            min: 3,
                            max: 25,
                            message: 'Debe tener mas de 6 y menos de 25 caracteres'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z_áéíóúñ\s]*$/,
                            message: 'El nombre de la empresa solo puede consistir en letras.'
                        }
                    }
                },
                EmpresaRepresentante: {
                    message: 'El representante no es válido',
                    validators: {
                        notEmpty: {
                            message: 'Campo Obligatorio, no puede estar vacio'
                        },
                        stringLength: {
                            min: 3,
                            max: 25,
                            message: 'Debe contener entre 3 a 25 caracteres.'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z_áéíóúñ\s]*$/,
                            message: 'Solo se admiten letras.'
                        }
                    }
                },
                EmpresaComercial: {
                    message: 'El nombre comercial no es válido',
                    validators: {
                        notEmpty: {
                            message: 'Campo Obligatorio, no puede estar vacio'
                        },
                        stringLength: {
                            min: 4,
                            max: 25,
                            message: 'Debe estar comprendido entre 4 a 25 letras.'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z_áéíóúñ\s]*$/,
                            message: 'Solo se admiten letras.'
                        }
                    }
                },
                EmpresaRTN: {
                    message: 'RTN no válido',
                    validators: {
                        notEmpty: {
                            message: 'Campo Obligatorio, no puede estar vacio'
                        },
                        stringLength: {
                            min: 6,
                            max: 10,
                            message: 'Debe estar comprendido entre 6 a 10 caracteres y números'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: 'Solo se admiten letras y números'
                        }
                    }
                },
            }
        });
    });
    </script>
<!--
<head>
<link rel="stylesheet" href="public/vendor/bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" href="public/dist/css/bootstrapValidator.css"/>
<script type="text/javascript" src="public/vendor/jquery/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="public/vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="public/dist/js/bootstrapValidator.js"></script>
</head>
<h1>Empresa</h1>
  <div class="container">
      <div class="row">
        <section>
            <div class="col-lg-8 col-lg-offset-2">
              <form id="defaultForm" action="index.php?page=empresa2&mode={{mode}}&EmpresaCodigo={{EmpresaCodigo}}" method="post" class="form-horizontal">
                   <div class="form-group">
                      <label class="col-lg-3 control-label">Código:</label>
                   {{if enabled}}
                   <div class="col-lg-5">
                     <input type="text" name="EmpresaCodigo" value="{{EmpresaCodigo}}"
                       placeholder="Un Número" />
                    </div>
                   {{endif enabled}}

                   {{ifnot enabled}}
                     <b>{{EmpresaCodigo}}</b>
                     <input type="hidden" name="EmpresaCodigo" value="{{EmpresaCodigo}}"/>
                   {{endifnot enabled}}
              </div>


                      <div class="form-group">
                       <label class="col-lg-3 control-label">Razón Social:</label>
                           {{ifnot deleting}}
                             <div class="col-lg-5">
                               <input type="text" class="form-control" name="EmpresaNombre" value="{{EmpresaNombre}}"/>
                          </div>
                          {{endifnot deleting}}

                           {{if deleting}}
                               <b>{{EmpresaNombre}}</b>
                               <input type="hidden" name="EmpresaNombre" value="{{EmpresaNombre}}"/>
                           {{endif deleting}}
                 </div>

                <div class="form-group">
                   <label class="col-lg-3 control-label">Representante Legal</label>
                       {{ifnot deleting}}
                          <div class="col-lg-5">
                             <input type="text" class="form-control" name="EmpresaRepresentante" value="{{EmpresaRepresentante}}"/>
                              </div>
                             {{endifnot deleting}}

                             {{if deleting}}
                                 <b>{{EmpresaRepresentante}}</b>
                                 <input type="hidden" name="EmpresaRepresentante" value="{{EmpresaRepresentante}}"/>
                             {{endif deleting}}
                </div>

                <div class="form-group">
                     <label class="col-lg-3 control-label">Nombre Comercial</label>
                         {{ifnot deleting}}
                         <div class="col-lg-5">
                           <input type="text" class="form-control" name="EmpresaComercial" value="{{EmpresaComercial}}"/>
                         </div>
                         {{endifnot deleting}}</br>

                         {{if deleting}}
                             <b>{{EmpresaComercial}}</b>
                             <input type="hidden" name="EmpresaComercial" value="{{EmpresaComercial}}"/>
                         {{endif deleting}}
                </div>


                    <div class="form-group">
                      <label class="col-lg-3 control-label">RTN</label>
                          {{ifnot deleting}}
                          <div class="col-lg-5">
                             <input type="text"  class="form-control" name="EmpresaRTN" value="{{EmpresaRTN}}"/>
                          </div>
                           {{endifnot deleting}}

                           {{if deleting}}
                               <b>{{EmpresaRTN}}</b>
                               <input type="hidden"class="form-control" name="EmpresaRTN" value="{{EmpresaRTN}}"/>
                           {{endif deleting}}
                 </div>


                   <div class="form-group">
                   {{if deleting}}
                       <input type="submit" class="btn btn-primary" value="Eliminar" name="btnEliminar" />
                   {{endif deleting}}
                   {{ifnot deleting}}
                       <input type="submit"  class="btn btn-primary" value="Guardar" name="btnGuardar" />
                   {{endifnot deleting}}
                   &nbsp;
                   <a href="index.php?page=listadoEmpresa" class="btn btn-warning" role="button">Cancelar</a>
                    </td>
                  </div>
            </form>
         </div>
    </section>
  </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('#defaultForm').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                EmpresaNombre: {
                    message: 'El nombre de la empresa no es válido',
                    validators: {
                        notEmpty: {
                            message: 'Campo Obligatorio, no puede estar vacio'
                        },
                        stringLength: {
                            min: 3,
                            max: 25,
                            message: 'Debe tener mas de 6 y menos de 25 caracteres'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z_áéíóúñ\s]*$/,
                            message: 'El nombre de la empresa solo puede consistir en letras.'
                        }
                    }
                },
                EmpresaRepresentante: {
                    message: 'El representante no es válido',
                    validators: {
                        notEmpty: {
                            message: 'Campo Obligatorio, no puede estar vacio'
                        },
                        stringLength: {
                            min: 3,
                            max: 25,
                            message: 'Debe contener entre 3 a 25 caracteres.'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z_áéíóúñ\s]*$/,
                            message: 'Solo se admiten letras.'
                        }
                    }
                },
                EmpresaComercial: {
                    message: 'El nombre comercial no es válido',
                    validators: {
                        notEmpty: {
                            message: 'Campo Obligatorio, no puede estar vacio'
                        },
                        stringLength: {
                            min: 4,
                            max: 25,
                            message: 'Debe estar comprendido entre 4 a 25 letras.'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z_áéíóúñ\s]*$/,
                            message: 'Solo se admiten letras.'
                        }
                    }
                },
                EmpresaRTN: {
                    message: 'RTN no válido',
                    validators: {
                        notEmpty: {
                            message: 'Campo Obligatorio, no puede estar vacio'
                        },
                        stringLength: {
                            min: 6,
                            max: 10,
                            message: 'Debe estar comprendido entre 6 a 10 caracteres y números'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: 'Solo se admiten letras y números'
                        }
                    }
                },
            }
        });
    });
    </script>-->
