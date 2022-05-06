<%@ Page Title="" Language="C#" MasterPageFile="~/Administrateur.Master" AutoEventWireup="true" CodeBehind="AjouterClient.aspx.cs" Inherits="WebApplication.AjouterClient" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	   <title>Ajouter Client</title>

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	



	  
   <script src="swalert.js" type="text/javascript"></script>
     <script>
         function errorMAIL() {
             Swal.fire(
   'Email déja utilisé',
   'Veuillez le vérifier et réessayer',
   'error'
 )
         }
             function errortel() {
                 Swal.fire(
       'numero de télephone déja utilisé',
       'Veuillez le vérifier et réessayer',
       'error'
     )
             }
             function SUCCESS() {
                 Swal.fire(
       'Client ajouté ',
       'avec succées',
       'success'
     )
             }
             function errorvid() {
                 Swal.fire(
       'Les champs ne doivent pas etre vide',
       'veiller les remplir ',
       'error'
     )
             }
         function errortel1() {
             Swal.fire(
                 'numéro de telephone obligatoirement 8 chiffres ',
                 'Veuillez le vérifier et réessayer',
                 'error'
             )
		 }
      
     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br />
    <br />
    <br />
    <br />
<div class="page-content page-container" id="page-content" >
  
    <div style="padding-left:500px;width:2200px">
        <div>
            <div class="col-xl-6 col-md-12">
                <div class="card user-card-full">
                    <div class="row m-l-0 m-r-0">
                        <div class="col-sm-4 bg-c-lite-green user-profile">
                            <div class="card-block text-center text-white">

                            
                                <div class="m-b-25"> <img src="images/Capture0.png" class="img-radius" width="220px"> </div>
                              <p style="color:black">Citez les informations nécessaires pour ajouter client.</p>
                            </div>
                          
                        </div>
                          
                        <div class="col-sm-8">
                            <div class="card-block">
                                <b><h6 class="m-b-20 p-b-5 b-b-default f-w-600" style="color:cornflowerblue">Client</h6></b>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Nom</p>
                                       <asp:TextBox  id="nom" AutoComplete="Off" runat="server" class="form-control" placeholder="Entrer le nom"></asp:TextBox>
                               
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Prénom</p>
                                    <asp:TextBox  id="prenom" AutoComplete="Off" runat="server" class="form-control" placeholder="Entrer le prénom"></asp:TextBox>
                                    </div>
                                </div>
                              <b> <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600"  style="color:cornflowerblue">Informations Détaillés</h6></b> 
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Email</p>
                                      <asp:TextBox  id="email" AutoComplete="Off" runat="server" class="form-control" Type="email" placeholder="exemple@com"></asp:TextBox>
                     
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Télephone</p>
                                     <asp:TextBox  id="tel" AutoComplete="Off" runat="server" class="form-control" type="number" placeholder="Numéro de télephone"></asp:TextBox>
                                           </div> 
                                     <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Adresse</p>
                                     <asp:TextBox  id="adr" AutoComplete="Off" runat="server" class="form-control" placeholder="Entrer l'adresse"></asp:TextBox>
                                    </div>
                                </div>
                                <ul class="social-link list-unstyled m-t-40 m-b-10">
                                    <asp:Button ID="Button1" runat="server" Text="Ajouter"  class="btn btn-facebook" OnClick="Confirmer_Click"  />
                    <asp:Button ID="Button2" runat="server" Text="Annuler"   class="btn btn-dark" OnClick="Annuler_Click"  />
			
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
</div>
    <style type="text/css">
        body {
    background-color: #f9f9fa
}






.m-r-0 {
    margin-right: 0px
}

.m-l-0 {
    margin-left: 0px
}

.user-card-full .user-profile {
    border-radius: 5px 0 0 5px
}



.user-profile {
    padding: 20px 0
}

.card-block {
    padding: 1.25rem
}

.m-b-25 {
    margin-bottom: 25px
}

.img-radius {
    border-radius: 5px
}

h6 {
    font-size: 14px
}

.card .card-block p {
    line-height: 25px
}

@media only screen and (min-width: 1400px) {
    p {
        font-size: 14px
    }
}

.card-block {
    padding: 1.25rem
}

.b-b-default {
    border-bottom: 1px solid #e0e0e0
}

.m-b-20 {
    margin-bottom: 20px
}

.p-b-5 {
    padding-bottom: 5px !important
}

.card .card-block p {
    line-height: 25px
}

.m-b-10 {
    margin-bottom: 10px
}

.text-muted {
    color: #919aa3 !important
}

.b-b-default {
    border-bottom: 1px solid #e0e0e0
}

.f-w-600 {
    font-weight: 600
}

.m-b-20 {
    margin-bottom: 20px
}

.m-t-40 {
    margin-top: 20px
}

.p-b-5 {
    padding-bottom: 5px !important
}

.m-b-10 {
    margin-bottom: 10px
}

.m-t-40 {
    margin-top: 20px
}

.user-card-full .social-link li {
    display: inline-block
}

.user-card-full .social-link li a {
    font-size: 20px;
    margin: 0 10px 0 0;
    -webkit-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out
}
         </style>
 
    </asp:Content>
   

