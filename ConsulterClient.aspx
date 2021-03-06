<%@ Page Title="" Language="C#" MasterPageFile="~/Administrateur.Master" AutoEventWireup="true" CodeBehind="ConsulterClient.aspx.cs" Inherits="WebApplication.ConsulterClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <title>Liste des clients</title>
      	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/styleliste.css">
         
     <script src="swalert.js"></script>
    <script>

         function supprimer() {
             Swal.fire(
                 "Client est supprimé ",
                 ' avec succées',
                 'success')
         }
         function modifier() {
             Swal.fire(
                 "Client est bien modifé ",
                 ' avec succées',
                 'success')
         }
        function errortel1() {
            Swal.fire(
                'numéro de telephone obligatoirement 8 chiffres ',
                'Veuillez le vérifier et réessayer',
                'error'
            )
        }
        function rechercher() {
            Swal.fire(
                "aucun client avec cette nom ",
                )
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="main-content">
		<div class="container">
         <h2 class="text-primary">Liste Des Clients</h2> 
            <br />
            <form class="search-form">
               <div class="d-flex justify-content-center px-5">
            <div class="search"> <asp:TextBox ID="txtsearch"  class="search-input" placeholder="Rechercher..." runat="server" AutoPostBack="true" OnTextChanged="txtsearch_TextChanged"></asp:TextBox> <a  class="search-icon"> <img src="images/search.png" width="25px"/> </a> </div>
 </div>
           
            <br />
        
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Client] "></asp:SqlDataSource>
      
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Client] where nom =@nmm ">
              <SelectParameters>
                  <asp:ControlParameter ControlID="txtsearch" Name="nmm" PropertyName="Text" />
              </SelectParameters>
            </asp:SqlDataSource>
      <asp:GridView ID="GridView1" runat="server" class="table" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
           
            <Columns>
                    <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="images/ls.jpg" HeaderText="Photo" ReadOnly="True" >
                        <ControlStyle Height="50px" Width="50px" />
                    </asp:ImageField>
                 
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="nom" HeaderText="Nom" SortExpression="nom" />
                <asp:BoundField DataField="prenom" HeaderText="Prenom" SortExpression="prenom" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="tel" HeaderText="Telephone" SortExpression="tel" />
                <asp:BoundField DataField="adr" HeaderText="Adresse" SortExpression="adr" />

                      
                       <asp:TemplateField  HeaderText="Action ">
                                <ItemTemplate>
                               
                          <asp:ImageButton CssClass="center-block" runat="server" ID="modifier" Text="Modifier"  ImageUrl="/images/nbv.png" Width="30px" OnClick="modifier_Click" ></asp:ImageButton>
                                      

                        <asp:ImageButton CssClass="center-block" runat="server" ID="supprimer" Text="supprimer" ImageUrl="/images/m.png" Width="35px" OnClick="supprimer_Click"></asp:ImageButton>
                                         

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
              <div class="container bootstrap snippets bootdey">
    <h2 class="text-primary">Modifier Client</h2>
      <hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
              <img src="images/clo.jpg" class="avatar img-circle img-thumbnail" alt="avatar">
        
        </div>
      </div>
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        
        <h3>Informations Personnelles</h3>
        
        <form class="form-horizontal" role="form">

             <div class="form-group">
            <label class="col-lg-3 control-label">ID:</label>
            <div class="col-lg-8">
           <asp:TextBox  id="id" AutoComplete="Off" runat="server" class="form-control" ></asp:TextBox>
            </div>
          </div>


          <div class="form-group">
            <label class="col-lg-3 control-label">Nom:</label>
            <div class="col-lg-8">
           <asp:TextBox  id="nom" AutoComplete="Off" runat="server" class="form-control" ></asp:TextBox>
            </div>
          </div>


          <div class="form-group">
            <label class="col-lg-3 control-label">Prenom:</label>
            <div class="col-lg-8">
                <asp:TextBox  id="prenom" AutoComplete="Off" runat="server" class="form-control" ></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
            <asp:TextBox  id="email" AutoComplete="Off"  type="email" runat="server" class="form-control" ></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Telephone:</label>
            <div class="col-lg-8">
           <asp:TextBox  id="tel" AutoComplete="Off" runat="server" class="form-control" ></asp:TextBox>
            </div>
          </div>
            <div class="form-group">
            <label class="col-lg-3 control-label">Adresse:</label>
            <div class="col-lg-8">
           <asp:TextBox  id="adr" AutoComplete="Off" runat="server" class="form-control" ></asp:TextBox>
            </div>
          </div>
            	<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
                    <center>
                    <asp:Button ID="Button1" runat="server" Text="Confirmer"  class="btn btn-primary" OnClick="Confirmer_Click"/>
                    <asp:Button ID="Button2" runat="server" Text="Annuler"   class="btn btn-warning" OnClick="Annuler_Click"/></center>
					</div>
			</div>
		</div>
        </form>
      </div>
  </div>
</div>
<hr>
            
             


		<style type="text/css">
body {
    margin: 0;


    background: #f5f6fa;
    position: relative;
    height: 100%;
}

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

