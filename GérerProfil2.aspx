<%@ Page Title="" Language="C#" MasterPageFile="~/Gestionnaire.Master" AutoEventWireup="true" CodeBehind="GérerProfil2.aspx.cs" Inherits="Pfe2022.GérerProfil2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid px-2 px-md-4 py-5 mx-auto">
    <div class="row d-flex justify-content-center" style="width:1750px">
        <div class="col-md-10 col-lg-9 col-xl-8">
            <div class="card card-main border-0 text-center">
                <h5 class="font-weight-bold mb-4" >Bonjour <asp:Label ID="prenom" runat="server" ></asp:Label>,Voulez vous changer vos coordonnées?</h5>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" >
                     
                        <div class="carousel-item active" >
                            <div class="card border-0 card-0" >
                                <div class="card profile py-3 px-4"  style="width:250px;height:300px">
                                    <div class="text-center"> <img src="images/user2.jpg" width="100px"> </div>
                                 
                                 
                                                        <i class="mdi mdi-email me-2 text-primary">       <asp:Label ID="email2" runat="server" style="color:black" ></asp:Label></i> 
  <i class="mdi mdi-login me-2 text-primary"> <asp:Label ID="Login" runat="server" style="color:black" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</i> 
   
     <i class="mdi mdi-lock me-2 text-primary">  <asp:Label ID="motdepasse" runat="server" style="color:black" ></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</i> 
                          <i class="mdi mdi-phone me-2 text-primary">       <asp:Label ID="tel2" runat="server" style="color:black" ></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp</i>  
   
                                 </div> 
                   <center>
                                <div class="form-group">
                                   
		              <br />
                      <br />
                                    <label class="col-lg-3 control-label" style="color:cornflowerblue"><b>Telephone:</b></label> 
                                      <div class="col-md-8">
		   <asp:TextBox  id="tel" AutoComplete="Off" runat="server" class="form-control" style="width:287px;padding-left:40px"  Type="number" placeholder="Entrer votre numéro de telephone"></asp:TextBox>
                     </div>               
                                    <br />
                          <label class="col-lg-3 control-label" style="color:cornflowerblue"><b>Email:</b> </label> 
                                      <div class="col-md-8">                
                   <asp:TextBox  id="email" AutoComplete="Off" runat="server" class="form-control" style="width:285px;padding-left:40px"  Type="email" placeholder="Entrer votre email"></asp:TextBox>    
		            </div>
                       </center>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
                    <asp:Button ID="Confirmer" runat="server" Text="Modifier"  class="btn btn-primary" OnClick="Confirmer_Click"/>
                     <asp:Button ID="Button1" runat="server" Text="Annuler"  class="btn btn-warning" OnClick="Button1_Click"/>
                    
                    
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
    color: #000;
    overflow-x: hidden;
    height: 100%;

    background-repeat: no-repeat
}

.card-main {
    padding: 50px;
    border-radius: 10px;
    margin-top: 50px;
    margin-bottom: 50px;
    box-shadow: 0px 4px 8px 0px #283593
}

.card-0 {
    color: #fff;
    background-color:whitesmoke;
    position: relative;
    margin-left: 70px;
    border-radius: 10px;
    min-height: 312px
}

.carousel-indicators li {
    cursor: pointer;
    border-radius: 50% !important;
    width: 10px;
    height: 10px
}

.profile {
    color: #000;
  
    position: absolute;
    left: -70px;
    top: 17%;
  
    border-top-left-radius: 0px;
    border-bottom-right-radius: 0px
}

.profile-pic {
    width: 120px;
    height: 120px;
    border-bottom-left-radius: 10px;
    border-top-right-radius: 10px
}

.open-quotes {
    margin-left: 130px;
    margin-top: 100px
}

.content {
    margin-left: 150px;
    margin-right: 80px
}

.close-quotes {
    margin-bottom: 100px;
    margin-right: 60px
}

@media screen and (max-width: 600px) {
    .card-main {
        padding: 50px 10px
    }

    .card-0 {
        min-height: 432px
    }

    .profile {
        top: 24%
    }

    .profile-pic {
        width: 90px;
        height: 90px
    }

    .open-quotes {
        margin-left: 100px
    }

    .content {
        margin-left: 120px;
        margin-right: 50px
    }

    .close-quotes {
        margin-right: 30px
    }
}
    </style>
</asp:Content>
