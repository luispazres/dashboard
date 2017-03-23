<h1>Inicio de Sesión</h1>
<div class="container">
    <div class="row">
        <section>
            <div class="col-lg-8 col-lg-offset-2">
               <form id="defaultForm" action="index.php?page=login2" method="post" method="post" class="form-horizontal">


                 <div class="form-group">
                    <label class="col-lg-3 control-label"> Usuario:</label>
                      <div class="col-lg-5">
                        <input type="text" class="form-control" name="txtUser" value="{{txtUser}}" placeholder="ejemplo@gmail.com"/>
                      </div>
                  </div>

                 <div class="form-group">
                    <label class="col-lg-3 control-label"> Contraseña:</label>
                    <div class="col-lg-5">
                      <input type="password" class="form-control" name="txtPswd" value="{{txtPswd}}">
                </div>
             </div>

             <div class="form-group">
               <div class="col-lg-9 col-lg-offset-3">
                    <input type="hidden" name="returnUrl" value="{{returnUrl}}"/>
                    <input type="submit" name="btnLogin" value="Ingresar"/></br>
                  </div>
                </div>

               </form>
            </div>
        </section>
    </div>
</div>

  <script type="text/javascript">
  $(document).ready(function() {
      $('#defaultForm')
          .bootstrapValidator({
              message: 'This value is not valid',
              feedbackIcons: {
                  valid: 'glyphicon glyphicon-ok',
                  invalid: 'glyphicon glyphicon-remove',
                  validating: 'glyphicon glyphicon-refresh'
              },
              fields: {
                  'txtUser': {
                      validators: {
                          emailAddress: {
                              message: 'The input is not a valid email address'
                          },
                          notEmpty: {
                              message: 'The password is required and cannot be empty'
                          }
                      }
                  },
                  'txtPswd': {
                      feedbackIcons: 'false',
                      validators: {
                          notEmpty: {
                              message: 'The password is required and cannot be empty'
                          },
                          different: {
                              field: 'username',
                              message: 'The password cannot be the same as username'
                          }
                      }
                  },
              }
          });
  });
  </script>
