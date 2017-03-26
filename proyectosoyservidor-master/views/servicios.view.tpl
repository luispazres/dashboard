
<!-- Font Awesome -->
<link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!-- NProgress -->
<link href="vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
<!-- Datatables -->
<link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
<link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
<link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
<link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
<link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="build/css/custom.min.css" rel="stylesheet">

        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_title">
              <h2 align="center">Listado Empresa</h2>
              <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
              </ul>
              <div class="clearfix"></div>
            </div>
            <div class="x_content">
              <table id="datatable-fixed-header" class="table table-striped table-bordered">
               <thead>
                <table>
                  <tr>
                    <th>
                      Codigo
                    </th>
                    <th>
                      Servicio Nombre
                    </th>
                  </tr>
                </thead>

                <tbody>
                  {{foreach tblservicios}}
                      <tr>
                        <td>
                          {{ServicioCodigo}}
                        </td>
                        <td>
                          {{ServicioNombre}}
                        </td>
                      </td>
                      <td>
                    <a class="btn" title="Eliminar Empresa" role="button"
                      href="index.php?page=serviciosAgregar&mode=DLT&ServicioCodigo={{ServicioCodigo}}"
                    >
                      <span class="glyphicon glyphicon-trash"></span>
                    </a>
                    </td>
                </tr>
                {{endfor tblservicios}}
              </tbody>
              </table>
                </div>
              <a class="btn btn-primary pull-right" role="button"
                href="index.php?page=serviciosAgregar&mode=INS">
                    <span class="glyphicon glyphicon-plus"></span>
                     &nbsp;Agregar Nuevo
              </a>
            </div>
        </div>

          <script src="vendors/fastclick/lib/fastclick.js"></script>
          <!-- NProgress -->
          <script src="vendors/nprogress/nprogress.js"></script>
          <!-- iCheck -->
          <script src="vendors/iCheck/icheck.min.js"></script>
          <!-- Datatables -->
          <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
          <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
          <script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
          <script src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
          <script src="vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
          <script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
          <script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
          <script src="vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
          <script src="vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
          <script src="vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
          <script src="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
          <script src="vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
          <script src="vendors/jszip/dist/jszip.min.js"></script>
          <script src="vendors/pdfmake/build/pdfmake.min.js"></script>
          <script src="vendors/pdfmake/build/vfs_fonts.js"></script>
