<%@ Page Title="" Language="C#" MasterPageFile="~/Visiteur.Master" AutoEventWireup="true" CodeBehind="GérerProfil3.aspx.cs" Inherits="WebApplication.GérerProfil3" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <title>Profil Visiteur</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="custom.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
 



<div class="container main-secction">
<br />
<br />
    <br />
<br />
    <br />
    <br />
<div class="row user-left-part">
<div class="col-md-3 col-sm-3 col-xs-12 user-profil-part pull-left">
<div class="row ">
<div class="col-md-12 col-md-12-sm-12 col-xs-12 user-image text-center">
<img src="https://bootdey.com/img/Content/avatar/avatar7.png">
</div>
<div class="col-md-12 col-sm-12 col-xs-12 user-detail-section1 text-center">
<button class="btn btn-defult follow "> Profil</button>
</div>

<div class="row user-detail-row">
     
<div class="col-md-12 col-sm-12 user-detail-section2 pull-left">


  <img src="images/p.png" width="25px"/> <asp:Label ID="nom" runat="server" style="color:black" ></asp:Label> &nbsp;&nbsp;<asp:Label ID="prenom" runat="server" style="color:black" ></asp:Label>
<span></span>
</div>

<div class="col-md-12 col-sm-12 user-detail-section2 pull-right">
<div class="border"></div>
    <img src="images/em.png" width="25px"/><asp:Label ID="email2" runat="server" style="color:black" ></asp:Label>
   
   
<span></span>
</div>
    <div class="col-md-12 col-sm-12 user-detail-section2 pull-right">
<div class="border"></div>
    <img src="images/l7.png" width="25px"/><asp:Label ID="Login" runat="server" style="color:black" ></asp:Label>
   
   
<span></span>
</div>
        <div class="col-md-12 col-sm-12 user-detail-section2 pull-right">
<div class="border"></div>
    <img src="images/lo.png" width="25px"/><asp:Label ID="motdepasse" runat="server" style="color:black" ></asp:Label>
   
   
<span></span>
</div>
        <div class="col-md-12 col-sm-12 user-detail-section2 pull-right">
<div class="border"></div>
    <img src="images/t.png" width="25px"/><asp:Label ID="tel" runat="server" style="color:black" ></asp:Label>
   
   
<span></span>
</div>

</div>
<div class="col-md-12 user-detail-section2">
<div class="border"></div>

</div>
</div>
</div>
<div class="col-md-9 col-sm-9 col-xs-12 pull-right profile-right-section">
<div class="row profile-right-section-row">
<div class="col-md-12 profile-header">
<div class="row">

<h3>Bonjour,Voulez vous changer vos coordonnées?</h3>
<p>Visiteur</p>
</div>
<br />
</div>
<div class="col-md-12">
<div class="row">
<div class="col-md-8 profile-tag-section text-center">
<div class="row">



</div>
</div>

     <form runat="server">
<div class="col-md-12">
<div class="row image-right-part">
  <div class="col-lg-6">
                      <div class="form-group">
                           <label class="form-control-label"><b>Email</b></label>
                           <asp:textbox  id="email"  runat="server" AutoCompleteType="Email" class="form-control form-control-alternative" Style="color:black" placeholder="@exemple.com"></asp:textbox>
                        
                      </div>
                    </div>
  
        <div class="col-lg-6">
                      <div class="form-group focused">
                            <label class="form-control-label" ><b>Telephone</b></label>
                           <asp:textbox  id="telephone" Style="color:black" type="number" class="form-control form-control-alternative" placeholder="Telephone" runat="server"></asp:textbox>
    
                      </div>
                    </div>







<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
                    <br />
                    <asp:Button ID="Confirmer" runat="server" Text="Modifier"  class="btn btn-primary" OnClick="Confirmer_Click"/>
                    <asp:Button ID="Annuler" runat="server" Text="Annuler"   class="btn btn-warning" OnClick="Annuler_Click"/>
					</div>
			</div>
</div>
</div>
</form>

</div>
</div>

</div>
</div>
</div>
</div>

    <style type="text/css">
        body{
background-color: #f1f1f1;
}
.border{
border-bottom:1px solid #F1F1F1;
margin-bottom:10px;
}

.image-section{
padding: 0px;
}
.image-section img{
width: 100%;
height:250px;
position: relative;
}
.user-image{
position: absolute;
margin-top:-50px;
}
.user-left-part{
margin: 0px;
}
.user-image img{
width:100px;
height:100px;
}
.user-profil-part{
padding-bottom:30px;
background-color:#FAFAFA;
}
.follow{
width:50%;
margin-top:70px;
font-size:12px;
border:1px solid #DDDDDD;
background-color: #fff;
font-weight: 600;
}
.user-detail-row{
margin:0px;
}
.user-detail-section2 p{
font-size:12px;
padding: 0px;
margin: 0px;
}
.user-detail-section2{
margin-top:10px;
}
.user-detail-section2 span{
color:#7CBBC3;
font-size: 20px;
}
.user-detail-section2 small{
font-size:12px;
color:#D3A86A;
}
.profile-right-section{
padding: 20px 0px 10px 15px;
background-color: #FFFFFF;
}
.profile-right-section-row{
margin: 0px;
}
.profile-header-section1 h1{
font-size: 25px;
margin: 0px;
}
.profile-header-section1 p{
color:#878787;
}
.req-btn{
height:30px;
font-size:12px;
}
.profile-tag{
padding: 10px;
border:1px solid #F6F6F6;
}
.profile-tag p{
font-size: 12px;
color:#ADADAD;
}
.profile-tag i{
color:#ADADAD;
font-size: 20px;
}
.image-right-part{
background-color: #FCFCFC;
margin: 0px;
padding: 5px;
}
.img-main-rightPart{
background-color: #FCFCFC;
}
.image-right-detail{
padding: 0px;
}
.image-right-detail p{
font-size: 12px;
}
.image-right-detail a:hover{
text-decoration: none;
}
.image-right img{
width: 100%;
}
.image-right-detail-section2{
margin: 0px;
}
.image-right-detail-section2 p{
color:#38ACDF;
margin:0px;
}
.image-right-detail-section2 span{
color:#7F7F7F;
}
    </style>
</body>

</asp:Content>
