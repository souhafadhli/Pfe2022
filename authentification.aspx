<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="authentification.aspx.cs" Inherits="WebApplication.authentification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  
  <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  <title>Connexion</title>

  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="css/login.css"/>
       <link rel="icon" href="images/iconn.PNG"  />
     <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>
<script src="swalert.js"></script>
     <script>
        
         function vide() {

             Swal.fire(

                 "Oops...",
                 " les champs ne doivent pas etre vide ",
                 'error'
             )
         }
         function invalide() {

             Swal.fire(

                 "Oops...",
                 "Les données sont invalides ",
                 'error'
             )
         }
    
     </script>
    <script>
        e = true;
        function change() {


            if (e) {
                document.getElementById("motdepasse").setAttribute("type", "text");
                document.getElementById("eyes").src = "images/un.png";
                e = false;
            }
            else {
                document.getElementById("motdepasse").setAttribute("type", "password");
                document.getElementById("eyes").src = "images/l.png";
                e = true;

            }
        }

    </script>

</head>

<body style="background-color:whitesmoke">
    <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container" style="width:1500px">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="images/e.png" alt="login" class="login-card-img"/>
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
           
              </div>
              <p class="login-card-description"> <b> Se Connecter</b></p>
                <h6 class="form-title">Vous Appartiennez à la MIC ,Veuillez vous connecter</h6>
              <form  runat="server">
                  <div class="form-group">
                    <asp:Label  runat="server"  for="email" class="sr-only">Email</asp:Label>
<asp:TextBox runat="server" type="text" class="form-control" ID="login"  placeholder="Entrer Votre Nom d'utilisateur"></asp:TextBox>
                  </div>
                  <div class="form-group mb-4" >
                    <asp:Label runat="server" for="password" class="sr-only">Password</asp:Label>
                       <asp:TextBox runat="server"  type="password" class="form-control" ID="motdepasse" style="vertical-align:middle;outline:none;position:relative;height:20px;display:inline-block" placeholder="******"></asp:TextBox>
                    
                      </div>
                   <div class="form-group">
                        <img src="images/l.png"   style="cursor:pointer;width:20px" id="eyes" onclick="change()"/>
              
                             
                                <asp:Label runat="server" for="remember-me" class="label-agree-term"><span><span></span></span>Afficher ou masquer mot de passe</asp:Label>
                            </div>
                 
                  
                  
                  
                  <asp:Button ID="connexion" runat="server" Text="Se Connecter" type="submit" class="btn btn-secondary btn-lg btn-radius  " style="background-color:cornflowerblue;border:none" Width="370px" OnClick="connexion_Click"/>
         

                </form>
                                      
                
                
                
                
                
                
                
                
                
             
                           
                         
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </main>
      <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
