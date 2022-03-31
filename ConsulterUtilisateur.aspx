<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ConsulterUtilisateur.aspx.cs" Inherits="Pfe2022.ConsulterUtilisateur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
   <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/styleliste.css">
 <script src="swalert.js"></script>
     <script>

         function supprimer() {
             Swal.fire(
                 "Utilisateur est supprimé ",
                 ' avec succées',
                 'success')
         }
         function modifier() {
             Swal.fire(
                 "Utilisateur est bien modifé ",
                 ' avec succées',
                 'success')
         }
         function errortel() {
             Swal.fire(
                 'numéro de telephone obligatoirement 8 chiffres ',
                 'Veuillez le vérifier et réessayer',
                 'error'
             )
         }
         function errorcin() {
             Swal.fire(
                 'CIN  obligatoirement 8 chiffres ',
                 'Veuillez le vérifier et réessayer',
                 'error'
             )
         }



     </script>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="main-content">
		<div class="container">

            <h2 class="text-primary">Liste Des Utilisateurs</h2>
            <br />
              <div class="d-flex justify-content-center px-5">
 <div class="search"> <asp:TextBox ID="txtsearch"  class="search-input" placeholder="Rechercher..." runat="server" AutoPostBack="true" OnTextChanged="txtsearch_TextChanged"></asp:TextBox> <a  class="search-icon"> <img src="images/search.png" width="25px"/> </a> </div>
       </div>
    <div class="container" >
    
</div>

          
            <br />
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Utilisateurs] where role!='Admin'">
              
            </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Utilisateurs] where role!='Admin' and cin=@c ">
              <SelectParameters>
                  <asp:ControlParameter ControlID="txtsearch" Name="c" PropertyName="Text" />
              </SelectParameters>
            </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" class="table" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
           
            <Columns>
				 <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="images/im1.jpg" HeaderText="Photo" ReadOnly="True" >
                        <ControlStyle Height="50px" Width="50px" />
                    </asp:ImageField>

                 
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="cin" HeaderText="CIN" SortExpression="cin" />
                <asp:BoundField DataField="nom" HeaderText="Nom" SortExpression="nom" />
                <asp:BoundField DataField="prenom" HeaderText="Prénom" SortExpression="prenom" />
                <asp:BoundField DataField="login" HeaderText="Nom d'utilisateur" SortExpression="login" />
                <asp:BoundField DataField="motdepasse" HeaderText="Mot de passe" SortExpression="motdepasse" />
                <asp:BoundField DataField="telephone" HeaderText="Telephone" SortExpression="telephone" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="role" HeaderText="Rôle" SortExpression="role" />
                                
                      <asp:TemplateField  HeaderText="Action ">
                                <ItemTemplate>
                               
                          <asp:ImageButton CssClass="center-block" runat="server" ID="modifier" Text="Modifier" OnClick="Modifier_Click1" ImageUrl="/images/ed.png" Width="35px" ></asp:ImageButton>
                                      

                        <asp:ImageButton CssClass="center-block" runat="server" ID="supprimer" Text="supprimer" OnClick="supp_Click" ImageUrl="/images/d.png" Width="32px"></asp:ImageButton>
                                         

                                </ItemTemplate>
                      
                                   
                                   

                                  
                               <HeaderStyle CssClass="centered"></HeaderStyle>
                            </asp:TemplateField>
                </Columns>
                 
                <HeaderStyle BorderColor="White" BorderStyle="None" ForeColor="#333333" />
                
                <PagerStyle BorderColor="White" BorderStyle="None" />
                
            </asp:GridView>
           
       
            </div>
            </section>
	
	

              <br />
              <br />
              <br />
             
    <center>  <h2 class="text-primary">Modifier Utilisateur</h2></center>
    <br />
      <div class="container">        
<div class="row gutters">
<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
<div class="card h-100">
	<div class="card-body">
		<div class="account-settings">
			<div class="user-profile">
				<div class="user-avatar">
					<img src="images/mis3.png" width="200px" alt="Maxwell Admin">
				</div>
				<h5 class="user-name">Utilisateurs</h5>
				<h6 class="user-email">Administrateur/Gestionnaire/ <br />Visiteur</h6>
			</div>
			<div class="about">
				<h5>Modifier </h5>
				<p>Citez tous les informations nécessaires pour modifier.</p>
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
					<label for="sTate">ID</label>
				  <asp:TextBox  AutoComplete="Off" id="Id" class="form-control"  runat="server"  ></asp:TextBox>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="phone">CIN</label>
		 <asp:TextBox  id="CIN" AutoComplete="Off" runat="server" class="form-control" placeholder="Entrer CIN"></asp:TextBox>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="fullName">Nom</label>
					 <asp:TextBox  id="nom" AutoComplete="Off" runat="server" class="form-control" placeholder="Entrer le nom"></asp:TextBox>
					
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="eMail">Prénom</label>
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
					    <asp:TextBox  id="motdepasse" AutoComplete="Off" runat="server"  class="form-control"  placeholder="Entrer le mot de passe"></asp:TextBox>
				
				</div>
			</div>

			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="ciTy">Telephone</label>
					    <asp:TextBox  id="tel" AutoComplete="Off" runat="server"  class="form-control"  placeholder="Entrer le numéro de telephone"></asp:TextBox>
				
				</div>
			</div>
		
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="zIp">Email</label>
					   <asp:TextBox  type="email"   id="email" AutoComplete="Off" class="form-control"   placeholder="Entrer l'email"    runat="server"></asp:TextBox>
				
				</div>
			</div>
				
			
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
				 <asp:Label ID="role1"  runat="server" Text="Rôle"></asp:Label>
                    
                         <asp:DropDownList ID="Role" runat="server"   class="form-control"  Height="30px"  > 
                           
                            <asp:ListItem>Adminstrateur</asp:ListItem>
                            <asp:ListItem>Gestionnaire</asp:ListItem>
                            <asp:ListItem>Visiteur</asp:ListItem>
                        </asp:DropDownList>
				</div>
			</div>
		</div>
		<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
                    <asp:Button ID="Button1" runat="server" Text="Confirmer"  class="btn btn-primary"   OnClick="Button1_Click"/>
                    <asp:Button ID="Button2" runat="server" Text="Annuler"   class="btn btn-warning"  OnClick="Button2_Click" />
					</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
 
		<style type="text/css">
      @import url("https://fonts.googleapis.com/css2?family=Poppins:weight@100;200;300;400;500;600;700;800&display=swap");






    .search {
		          width: 55%;
    margin-bottom: auto;
    margin-top: 20px;
    height: 50px;
    background-color: #fff;
    padding: 10px;
		        border-radius: 45px;
		        box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
		        transform: translate(-50%, -50%);
		        background: #fff;
		        transition: all 0.3s ease;
		    }

.search-input {
    color: white;
    border: 0;
    outline: 0;
    background: none;
    width: 0;
    margin-top: 5px;
    caret-color: transparent;
    line-height: 20px;
    transition: width 0.4s linear
}

.search .search-input {
    padding: 0 10px;
    width: 100%;
    caret-color: #536bf6;
    font-size: 19px;
    font-weight: 300;
    color: black;
    transition: width 0.4s linear
}

.search-icon {
    height: 34px;
    width: 34px;
    float: right;
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
   
    font-size: 10px;
    bottom: 30px;
    position: relative;
    border-radius: 5px
}



body {
    margin: 0;


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

<script type="text/javascript">

</script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      
</asp:Content>

