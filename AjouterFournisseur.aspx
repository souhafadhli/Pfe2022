<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AjouterFournisseur.aspx.cs" Inherits="Pfe2022.AjouterFournisseur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 


    
     <script src="swalert.js" type="text/javascript"></script>
    <script>
        function error1() {
            Swal.fire(
                'Ordre de production est déja utilisé',
                'Veuillez le vérifier et réessayer',
                'error'
            )
        }
        function errorF() {
            Swal.fire(
                'Nom De Fournisseur est déja utilisé',
                'Veuillez le vérifier et réessayer',
                'error'
            )
		}
        function error1() {
            Swal.fire(
                ' GOTSPJ est déja utilisé',
                'Veuillez le vérifier et réessayer',
                'error'
            )
		}
        function error2() {
            Swal.fire(
                ' GOTS date est déja utilisé',
                'Veuillez le vérifier et réessayer',
                'error'
            )
		}
        function error3() {
            Swal.fire(
                ' GRSPJ est déja utilisé',
                'Veuillez le vérifier et réessayer',
                'error'
            )
		}
        function error4() {
            Swal.fire(
                ' GRS date est déja utilisé',
                'Veuillez le vérifier et réessayer',
                'error'
            )
		}
        function error5() {
            Swal.fire(
                ' OCSPJ  est déja utilisé',
                'Veuillez le vérifier et réessayer',
                'error'
            )
        }
        function error6() {
            Swal.fire(
                ' OSC date est déja utilisé',
                'Veuillez le vérifier et réessayer',
                'error'
            )
        }
        function error7() {
            Swal.fire(
                ' RCS date  est déja utilisé',
                'Veuillez le vérifier et réessayer',
                'error'
            )
        }
        function error6() {
            Swal.fire(
                ' RCPJ  est déja utilisé',
                'Veuillez le vérifier et réessayer',
                'error'
            )
        }
        function Ajoute() {
            Swal.fire(
                'La Commande est ajoutée ',
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


	<br />
	<br />
	<br />
    <div class="container">
<div class="row gutters">
<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
<div class="card h-100">
	<div class="card-body">
		<div class="account-settings">
			<div class="user-profile">
			
					<img src="images/ffk.png"  width="260px">
			
				
			
			</div>
			<div class="about">
				<h4> Ajouter </h4>
				<p>Citez tous les informations nécessaires pour ajouter des fournisseurs.</p>
			</div>
		</div>
	</div>
</div>
</div>
<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
<div>
	<div>
		<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<h6 class="mb-2 text-primary"><b style="color:blue">Données Générales</b></h6>
			</div>
			
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="phone">Fournisseur</label>
		 <asp:TextBox  id="nomFournisseur" AutoComplete="Off" runat="server" class="form-control" placeholder="Entrer le nom du fournisseur"></asp:TextBox>
				
                </div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="fullName">GOTS PJ</label>
					 <asp:TextBox  id="Gotsp" AutoComplete="Off" runat="server" class="form-control"></asp:TextBox>
					
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="eMail">GOTS date d'expiration</label>
					   <asp:TextBox  id="Gotsd" AutoComplete="Off" runat="server" class="form-control" Type="date"></asp:TextBox>
				
				</div>
			</div>
			
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="website">GRS Pj</label>
					            <asp:TextBox  id="grs" AutoComplete="Off" class="form-control" runat="server"  ></asp:TextBox>
				
				</div>
			</div>
		</div>
		<div class="row gutters">
		
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="Street">GRS date d'expiration</label>
					    <asp:TextBox  id="grsdd" AutoComplete="Off" runat="server" Type="date"  class="form-control"></asp:TextBox>
				
				</div>
			</div>

			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="ciTy">OCS Pj</label>
					    <asp:TextBox  id="ocs" AutoComplete="Off" runat="server"  class="form-control" ></asp:TextBox>
				
				</div>
			</div>
		
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="zIp">OSC date d'expiration</label>
					   <asp:TextBox     id="oscd" AutoComplete="Off" class="form-control"  Type="date"  runat="server"></asp:TextBox>
				
				</div>
			</div>
				
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="zIp">RCS Pj</label>
					   <asp:TextBox     id="rcs" AutoComplete="Off" class="form-control"    runat="server"></asp:TextBox>
				
				</div>

			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="zIp">RCS date d'expiration</label>
					   <asp:TextBox     id="rcsd" AutoComplete="Off" class="form-control"  Type="date"  runat="server"></asp:TextBox>
				
				</div>
			</div>
		</div>
		<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
							 <asp:Button  runat="server" text="Ajouter"  class="btn btn-primary btn-lg btn-radius"  OnClick="Unnamed_Click"  />  
               
   <asp:Button  runat="server" text="Annuler" class="btn btn-warning btn-lg btn-radius" OnClick="Unnamed_Click1" />
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
    margin: 0;
   
    color: #2e323c;
    background: #f5f6fa;
    position: relative;
    height: 100%;
}
.account-settings .user-profile {
    margin: 0 0 1rem 0;
    padding-bottom: 1rem;
    text-align: center;
}
.account-settings .user-profile .user-avatar {
    margin: 0 0 1rem 0;
}
.account-settings .user-profile .user-avatar img {
    width: 90px;
    height: 90px;
    -webkit-border-radius: 100px;
    -moz-border-radius: 100px;
    border-radius: 100px;
}
.account-settings .user-profile h5.user-name {
    margin: 0 0 0.5rem 0;
}
.account-settings .user-profile h6.user-email {
    margin: 0;
    font-size: 0.8rem;
    font-weight: 400;
    color: #9fa8b9;
}
.account-settings .about {
    margin: 2rem 0 0 0;
    text-align: center;
}
.account-settings .about h5 {
    margin: 0 0 15px 0;
    color: #007ae1;
}
.account-settings .about p {
    font-size: 0.825rem;
}
.form-control {
    border: 1px solid #cfd1d8;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    font-size: .825rem;
    background: #ffffff;
    color: #2e323c;
}

.card {
    background: #ffffff;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    border: 0;
    margin-bottom: 1rem;
}


</style>


   
</asp:Content>













