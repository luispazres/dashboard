<head>
    <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
      <link href="vendors/iCheck/icheck.min.js" rel="stylesheet">
    <!-- Datatables -->
    <link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js" rel="stylesheet">
    <link href="vendors/datatables.net-responsive/js/dataTables.responsive.min.js" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
</head>

<h1>Directorio de Contratos</h1>
<hr/>
<!---------------------------------------------------------------->

<div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_title">
              <h2>Directorio de Contratos</h2>
              <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
              </ul>
              <div class="clearfix"></div>
            </div>
            <div class="x_content">
                  <div class="card-box table-responsive">

                    <table id="datatable-fixed-header" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Contrato Codigo</th>
                        <th>Fecha de Ingreso</th>
                        <th>Fecha de Vencimiento</th>
                        <th>Contrato vigencia</th>
                        <th>Valor Contrato</th>
                        <th>Tipo de Servicio</th>
                        <th>Nombre del Documento</th>
                        <th>  &nbsp;</th>
                        </tr>
                      </thead>
                        {{foreach tblcontratos}}
                        <tbody>
                        <form method="post" action="index.php?page=VerContratos" >
                            <tr>
                              <td>{{ContratoCodigo}}</td>
                              <td>{{ContratoFechaInicio}}</td>
                              <td>{{ContratoFechaFinal}}</td>
                              <td> {{VigenciaMeses}}</td>
                              <td>{{ContratoValor}}</td>
                              <td>{{TipodeServicio}}</td>
                             <td>
                               <a href="index.php?page=vista&DocumentoDireccion={{DocumentoDireccion}}">{{NombredelContrato}}</a>
                             </td>
                             <td>
                               <a href="index.php?page=VerContratos&DocumentoDireccion={{DocumentoDireccion}}" class="btn" title="Descargar Contrato" role="button"
                               >
                                 <span class="glyphicon glyphicon-download-alt"></span>
                               </a>
                               <a class="btn" title="Editar contrato" role="button"
                                 href="index.php?page=contratoEdicion&mode=UPD&ContratoCodigo={{ContratoCodigo}}&EmpresaCodigo={{EmpresaCodigo}}"
                               >
                                 <span class="glyphicon glyphicon-edit"></span>
                               </a>
                               <a class="btn" title="Eliminar contrato" role="button"
                                 href="index.php?page=VerContratos&mode=DLT&ContratoCodigo={{ContratoCodigo}}&EmpresaCodigo={{EmpresaCodigo}}"
                               >
                                 <span class="glyphicon glyphicon-trash"></span>
                               </a>
                             </td>
                           </tr>
                           </form>
                       {{endfor tblcontratos}}
                      </tbody>
                      </table>
                      </div>
               </div>
            </div>
        </div>

<a class="btn btn-primary pull-right" role="button"
  href="index.php?page=listadoEmpresa&mode=INS">
      <span class="glyphicon glyphicon-plus"></span>
       &nbsp;Regresar
</a>
