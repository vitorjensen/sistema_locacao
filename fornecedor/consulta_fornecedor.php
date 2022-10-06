<?PHP
require_once('../conexao/banco.php');

$cons_codigo = isset($_REQUEST['txt_cons_codigo']) ? $_REQUEST['txt_cons_codigo']: '';
$cons_pessoa = isset($_REQUEST['txt_cons_pessoa']) ? $_REQUEST['txt_cons_pessoa']: '';
$cons_cnpj = isset($_REQUEST['txt_cons_cnpj']) ? $_REQUEST['txt_cons_cnpj']: '';
$cons_razao = isset($_REQUEST['txt_cons_razao']) ? $_REQUEST['txt_cons_razao']: '';
$cons_fantasia = isset($_REQUEST['txt_cons_fantasia']) ? $_REQUEST['txt_cons_fantasia']: '';
$cons_endereco = isset($_REQUEST['txt_cons_endereco']) ? $_REQUEST['txt_cons_endereco']: '';
$cons_numero = isset($_REQUEST['txt_cons_numero']) ? $_REQUEST['txt_cons_numero']: '';
$cons_cidade = isset($_REQUEST['txt_cons_cidade']) ? $_REQUEST['txt_cons_cidade']: '';
$cons_estado = isset($_REQUEST['txt_cons_estado']) ? $_REQUEST['txt_cons_estado']: '';
$cons_telefone = isset($_REQUEST['txt_cons_telefone']) ? $_REQUEST['txt_cons_telefone']: '';
$cons_data_cadastro = isset($_REQUEST['txt_cons_data_cadastro']) ? $_REQUEST['txt_cons_data_cadastro']: '';


$sql = "select *, date_format(for_data_cadastro,'%d/%m/%Y') as data
        from tb_fornecedor
        where 
          for_codigo like '%".$cons_codigo."%'AND
          for_pessoa like '%".$cons_pessoa."%'AND
          for_cnpj like '%".$cons_cnpj."%'AND
          for_razao like '%".$cons_razao."%'AND
          for_fantasia  like '%".$cons_fantasia."%'AND
          for_endereco like '%".$cons_endereco."%'AND
          for_numero like '%".$cons_numero."%'AND
          for_cidade like '%".$cons_cidade."%'AND
          for_estado like '%".$cons_estado."%'AND
          for_telefone like '%".$cons_telefone."%'AND
          for_data_cadastro like '%".$cons_data_cadastro."%'
       ";


$sql = mysqli_query($con, $sql) or die ("Erro na sql!") ;



?>



<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Consulta | Fornecedor</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->
    <!-- Page -->
    <link rel="stylesheet" href="../assets/vendor/css/pages/page-misc.css" />
    <!-- Helpers -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/js/config.js"></script>


    <script type="text/javascript">
    
        function excluir_registro( ) {
            if( !confirm('Deseja realmente excluir este registro?') 
        ){
            if( window.event)
                window.event.returnValue=false;
            else
                e.preventDefault();
         }
        }
    
    </script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <?php include("../menu.php"); ?>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item d-flex align-items-center">
                <span class="text-muted fw-light">Fornecedor/</span> Consulta
                  
                </div>
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Place this tag where you want the button to render. -->
                <li class="nav-item lh-1 me-3">
                </li>

                <!-- User -->
                <?php include("includeUSER.php"); ?>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
            <div class="container-xxl flex-grow-1 container-p-y">

            </div>

              <div class="row">
                <div class="col-md-12">
                  
                  <div class="card">
                    <!-- Notifications -->
                    <div class="card">
    <nav class="navbar navbar-expand-sm navbar-dark" aria-label="Third navbar example" style="background-color: lightgray">
    <div class="container-fluid">
      
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample03">
        <ul class="navbar-nav me-auto mb-2 mb-sm-0">
          <li class="nav-item">
          <button type="button" class="btn btn-danger">Consulta</button>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="form_fornecedor.php">Novo Fornecedor:</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">Filtrar</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Nome</a></li>
              
            </ul>
          </li>
        </ul>
        <div class="box-search"  style="position: relative; right: 10px;">
          <input class="form-control" type="search" placeholder="Pesquisar:" id="pesquisar" aria-label="Search">
          </div>
          <button class="btn btn-primary" onclick="searchData()">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
          </svg>
        </button>
        </form>
      
    </div>
  </nav>
                      <div class="table-responsive text-nowrap">
                        <table class="table table-bordered">
                          <thead>
                            <tr>
                              <th>#:</th>
                              <th>Pessoa:</th>
                              <th>CNPJ:</th>
                              <th>Razão:</th>
                              <th>Fantasia:</th>
                              <th>Endereço:</th>
                              <th>Número:</th>
                              <th>Cidade:</th>
                              <th>Estado:</th>
                              <th>Telefone:</th>
                              <th>Data/Cadastro:</th>
                            </tr>
                            </thead>

                          <?php while ($dados = mysqli_fetch_array($sql)) { ?>

                            <tbody class="table-border-bottom-0"> 
                              <tr>
                            <td> <?php echo $dados['for_codigo']; ?> </td> 
                            <td> <?php echo $dados['for_pessoa']; ?> </td> 
                            <td> <?php echo $dados['for_cnpj']; ?> </td>
                            <td> <?php echo $dados['for_razao']; ?> </td>
                            <td> <?php echo $dados['for_fantasia']; ?> </td> 
                            <td> <?php echo $dados['for_endereco']; ?> </td> 
                            <td> <?php echo $dados['for_numero']; ?> </td>
                            <td> <?php echo $dados['for_cidade']; ?> </td>
                            <td> <?php echo $dados['for_estado']; ?> </td> 
                            <td> <?php echo $dados['for_telefone']; ?> </td> 
                            <td> <?php echo $dados['data']; ?> </td>

                          <td>
                          <div class="dropdow">
                          <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                          <i class="bx bx-dots-vertical-rounded"></i>
                          </button>
                          <div class="dropdown-menu">
                          <a class="dropdown-item" href="form_atualizar_fornecedor.php?for_codigo=<?php echo $dados['for_codigo']; ?>">
                          <i class="bx bx-edit-alt me-2"></i> Editar</a
                          >
                        <a class="dropdown-item" href="delete_fornecedor.php?for_codigo=<?php echo $dados['for_codigo']; ?>" onclick="excluir_registro(event)">
                    <i class="bx bx-trash me-2"></i> Apagar</a    
                    >
         </div>
        </div>
       </td>
     </tr>
    </div>
  </div>
<?php } ?>
</tbody>
</table>

   

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    
   
  </body>

  <script>

var search = document.getElementById('pesquisa');
var searchstatus = document.getElementById('pesquisa_status');

search.addEventListener("keydown", function(event){
  if (event.key === "Enter")
  {
    searchData();
  }
});

function searchData()
{
   window.location = 'consulta_fornecedor.php?search='+search.value; 
}


</script>

</html>