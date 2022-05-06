<%@ Page Title="" Language="C#" MasterPageFile="~/Administrateur.Master" AutoEventWireup="true" CodeBehind="GérerProfil1.aspx.cs" Inherits="WebApplication.GérerProfil1" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
      <title>Profil Administrateur</title>
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
     <link href="css/Profil.css" rel="stylesheet"/>

     <!--script sweet alert-->
    <script src="swalert.js"></script>
    <script>
        function modifier() {
            Swal.fire(
  'Coordonnées modifiés ',
  'avec succées',
  'success'
)
        }
       
        function vide() {
            Swal.fire(
  'les champs ne doivent pas etre vide',
  'Veuillez le vérifier et réessayer',
  'error'
)
        }
    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
   


    <br />
    <br />
    <br />
    <br />
     <br />
    <br />
    <br />
    <br />
   

    <div class="container-fluid mt--7">
      <div class="row">
        <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
          <div class="card card-profile shadow">
            <div class="row justify-content-center">
              <div class="col-lg-3 order-lg-2">
                <div class="card-profile-image">
                 
                    <img src="images/women.jpg" class="rounded-circle">
                 
                </div>
              </div>
            </div>
            <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
              <div class="d-flex justify-content-between">
                 <h5>Informations Personnelles</h5>
                  <asp:Button ID="Modifer" class="btn btn-sm btn-default float-right" runat="server" Style="background-color:cornflowerblue; border-color:cornflowerblue" Text="Modifier"  OnClick="Modifer_Click1"> </asp:Button>
                  
              </div>
            </div>
            <div class="card-body pt-0 pt-md-4">
              <div class="row">
                <div class="col">
                  <div class="card-profile-stats d-flex justify-content-center mt-md-5">
                    
                    
                   
                  </div>
                </div>
              </div>
              <div class="text-center">
                <h3>
                  <asp:Label ID="nom" runat="server" ></asp:Label>
                  <asp:Label ID="prenom" runat="server" ></asp:Label>

                </h3>
                 <div class="h5 font-weight-300">
                       <img src="images/carte.png" width="35x"></img>     <asp:Label ID="cin" runat="server" ></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                      <i class="mdi mdi-email me-2 text-primary"> </i>    <asp:Label ID="email" runat="server" ></asp:Label>&nbsp;&nbsp;<br />
                      <i class="mdi mdi-phone me-2 text-primary"></i>  <asp:Label ID="telephone" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
      
                      <i class="mdi mdi-lock me-2 text-primary"></i>   <asp:Label ID="Motdepasse" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                  
                                <i class="mdi mdi-login me-2 text-primary"></i>   <asp:Label ID="login" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                  
                </div>
                
                <div>
                  
                </div>
                
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-8 order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0"><b>Profil</b></h3>
                </div>
                <div class="col-4 text-right">
                  
                </div>
              </div>
            </div>
            <div class="card-body">
              <form>
                <h6 class="heading-small text-muted mb-4">Modifier coordonnées</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                          <label class="form-control-label" ><b>Nom d'utilisateur</b></label>
                          <asp:TextBox ID="login1" runat="server" class="form-control form-control-alternative" Style="color:black" placeholder="Nom D'utilisateur"></asp:TextBox>
                       
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                           <label class="form-control-label"><b>Email</b></label>
                           <asp:textbox  id="email4"  runat="server" class="form-control form-control-alternative" Style="color:black" placeholder="@exemple.com"></asp:textbox>
                        
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                           <label class="form-control-label"><b>Mot De Passe</b></label>
                           <asp:textbox  id="motdepasse3" Style="color:black"  runat="server" class="form-control form-control-alternative" placeholder="*****"></asp:textbox>
                        
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                            <label class="form-control-label"><b>Telephone</b></label>
                           <asp:textbox  id="telephone2" Style="color:black" class="form-control form-control-alternative" placeholder="Telephone" runat="server"></asp:textbox>
    
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4">
                	<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
                    <asp:Button ID="Confirmer" runat="server" Text="Confirmer"  class="btn btn-primary" OnClick="Confirmer_Click" />
                    <asp:Button ID="Annuler" runat="server" Text="Annuler"   class="btn btn-warning" OnClick="Annuler_Click"  />
					</div>
			</div>
		</div>
                             
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </asp:Content>
