<%@ Page Title="" Language="C#" MasterPageFile="~/Administrateur.Master" AutoEventWireup="true" CodeBehind="AjouterUtilisateur.aspx.cs" Inherits="WebApplication.AjouterUtilisateur" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> <title>Ajouter Utilisateur</title>
	   <title>Ajouter utilisateur</title>
	<script src="swalert.js" type="text/javascript"></script>
	 <script>
         function vide() {
             Swal.fire(
                 'les champs ne doivent pas etre vide',
                 'Veuillez le vérifier et réessayer',
                 'error'
             )
		 }
		 function errortel1()
         {
             Swal.fire(
                 'numéro de telephone obligatoirement 8 chiffres ',
                 'Veuillez le vérifier et réessayer',
                 'error'
             )
		 }
         
         function error1() {
             Swal.fire(
                 'Email est déja utilisé',
                 'Veuillez le vérifier et réessayer',
                 'error'
             )
         }
         function error2() {
             Swal.fire(
                 'CIN est déja utilisé',
                 'Veuillez le vérifier et réessayer',
                 'error'
             )
         }
         function error3() {
             Swal.fire(
                 'Nom d Utilisateur est déja utilisé ',
                 'avec succées',
                 'success'
             )
         }
         function error4() {
             Swal.fire(
                 'Numéro de telephone est déja utilisé',
                 'Veuillez le vérifier et réessayer',
                 'error'
             )
		 }

        
         function Ajouter() {
             Swal.fire(
                 'Utilisateur ajouté ',
                 'avec succées',
                 'success'
             )
         }
         function errorcin1() {
             Swal.fire(
                 'CIN  obligatoirement 8 chiffres ',
                 'Veuillez le vérifier et réessayer',
                 'error'
             )
         }
         function role() {
             Swal.fire(
                 ' obligatoire d ajouter un role ',
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
				<div class="user-avatar">
					<img src="images/b.jpg" alt="Maxwell Admin">
				</div>
				<br />
				<center><h5 class="user-name">Utilisateurs</h5></center>
			
			</div>
			<div class="about">
			
				<center><p>Citez tous les informations nécessaires pour ajouter des utilisateurs.</p></center>
			</div>
		</div>
	</div>
</div>
</div>
<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
<div class="card h-100">
	<div class="card-body">
		<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<h6 class="mb-2 text-primary">Détails personnels</h6>
			</div>
			
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="CIN">CIN</label>
		 <asp:TextBox  id="CIN" AutoComplete="Off" runat="server" type="number" class="form-control" placeholder="Entrer le prénom"></asp:TextBox>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="fullName">Nom</label>
					 <asp:TextBox  id="nom" AutoComplete="Off"  runat="server" class="form-control" placeholder="Entrer le nom"></asp:TextBox>
					
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="Mail">Prénom</label>
					   <asp:TextBox  id="prenom" AutoComplete="Off" runat="server" class="form-control" placeholder="Entrer le prénom"></asp:TextBox>
				
				</div>
			</div>
			
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="website">Nom d'utilisateur</label>
					            <asp:TextBox  id="login" AutoComplete="Off" class="form-control" runat="server"  placeholder="Entrer le nom d'utilisateur"></asp:TextBox>
				
				</div>
			</div>
		</div>
		<div class="row gutters">
		
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="Street">Mot De Passe</label>
					    <asp:TextBox  id="motdepasse" AutoComplete="Off" runat="server"  class="form-control" Type="password" placeholder="Entrer le mot de passe"></asp:TextBox>
				
				</div>
			</div>

			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="ciTy">Telephone</label>
					    <asp:TextBox  id="tel" AutoComplete="Off" runat="server" type="number"  class="form-control"  placeholder="Entrer le numéro de telephone"></asp:TextBox>
				
				</div>
			</div>
		
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="zIp">Email</label>
					   <asp:TextBox    type="email" id="email" AutoComplete="Off" class="form-control"  placeholder="Entrer l'email"    runat="server"></asp:TextBox>
				
				</div>
			</div>
				
			
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group" >
                   
				 <asp:Label ID="role1"  runat="server" Text="Rôle" ></asp:Label>
                    
                         <asp:DropDownList ID="Role" runat="server"  Height="50px"  class="form-control"  > 
                                    <asp:ListItem></asp:ListItem>
                            	<asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Gestionnaire</asp:ListItem>
                            <asp:ListItem>Visiteur</asp:ListItem>
                        </asp:DropDownList>
				</div>
			</div>
		</div>
		<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
							 <asp:Button  runat="server" text="Ajouter"  class="btn btn-primary btn-lg btn-radius" OnClick="Unnamed_Click"/>  
               
   <asp:Button  runat="server" text="Annuler" class="btn btn-warning btn-lg btn-radius" OnClick="Unnamed_Click1"/>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
             

</asp:Content>


