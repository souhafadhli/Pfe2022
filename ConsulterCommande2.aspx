<%@ Page Title="" Language="C#" MasterPageFile="~/Gestionnaire.Master" AutoEventWireup="true" CodeBehind="ConsulterCommande2.aspx.cs" Inherits="WebApplication.ConsulterCommande2" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <title>Liste des commandes</title>
    	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/styleliste.css">
     <script src="swalert.js" type="text/javascript"></script>
    <script>
        function supprimer() {
            Swal.fire(
                "Commande est supprimé ",
                ' avec succées',
                'success')
        }
        function modifier() {
            Swal.fire(
                "Commande est bien modifé ",
                ' avec succées',
                'success')
        }
        function client() {
            Swal.fire(
                ' obligatoire d ajouter un  client',
                'Veuillez le vérifier et réessayer',
                'error'
            )
        }
        function rechercher() {
            Swal.fire(
                "aucune commande  avec cette reference ",
               )
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<section class="main-content">
		<div class="container">
            <h2 class="text-primary">Liste Des Commandes</h2>


  <form class="search-form">
               <div class="d-flex justify-content-center px-5">
            <div class="search"> <asp:TextBox ID="txtsearch"  class="search-input" placeholder="Rechercher..." runat="server" AutoPostBack="true" OnTextChanged="txtsearch_TextChanged"></asp:TextBox> <a  class="search-icon"> <img src="images/search.png" width="25px"/> </a> </div>
 </div>
            <br />
        
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Commande] "></asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Commande] where reference =@ref ">
              <SelectParameters>
                  <asp:ControlParameter ControlID="txtsearch" Name="ref" PropertyName="Text" />
              </SelectParameters>
            </asp:SqlDataSource>
      
      
      
      
      
      <asp:GridView ID="GridView1" runat="server" class="table" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
           
            <Columns>
                 
               
                 
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="reference" HeaderText="Réference" SortExpression="reference" />
                <asp:BoundField DataField="ordre" HeaderText="Ordre De Production" SortExpression="ordre" />
                <asp:BoundField DataField="lavage" HeaderText="Lavage" SortExpression="lavage" />
                <asp:BoundField DataField="modele" HeaderText="Modéle" SortExpression="modele" />
                <asp:BoundField DataField="client" HeaderText="Client" SortExpression="client" />
             <asp:TemplateField  HeaderText="Action ">
                                <ItemTemplate>
                               
                          <asp:ImageButton CssClass="center-block" runat="server" ID="modifier" Text="Modifier"  ImageUrl="/images/ed.png" Width="32px" OnClick="modifier_Click" ></asp:ImageButton>
                                      

                        <asp:ImageButton CssClass="center-block" runat="server" ID="supprimer" Text="supprimer" ImageUrl="/images/fs.png" Width="32px" OnClick="supprimer_Click"></asp:ImageButton>
                                         

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
              <div class="container-xl px-4 mt-4">

    <nav class="nav nav-borders">
      <h4> <a href="" target="__blank"><b style="color:black">Modifier Commande</b></a></h4> 
      
    </nav>
    <hr class="mt-0 mb-4">
    <div class="row">
        <div class="col-xl-4">
           
            <div class="card mb-4 mb-xl-0">
                <div class="card-header">Commandes</div>
                <div class="card-body text-center">
               
                    <img  src="images/cmd.jpg" style="height:250px">
             
                    <div class="small font-italic text-muted mb-4">Citez tous les informations nécessaires pour modifier les commandes.</div>
                  
               
                </div>
            </div>
        </div>
        <div class="col-xl-8">
      
            <div class="card mb-4">
                <div class="card-header">Informations Détaillés</div>
                <div class="card-body">
                    <form>
                        
                    
                        <div class="row gx-3 mb-3">
                      
                            <div class="col-md-6">
                                <label class="small mb-1" for="id">ID</label>
                             <asp:TextBox  AutoComplete="Off" id="ID" class="form-control"  runat="server"  ></asp:TextBox>
                            </div>
                         
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLastName">Référence</label>
                                  <asp:TextBox  AutoComplete="Off" id="reference" class="form-control"  runat="server"  ></asp:TextBox>
                             
                            </div>
                        </div>
                   
                        <div class="row gx-3 mb-3">
                        
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputOrgName">Ordre De Production</label>
                              <asp:TextBox  AutoComplete="Off" id="ordre" class="form-control"  runat="server"  ></asp:TextBox>
                            </div>
                         
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLocation">Lavage</label>
                           <asp:TextBox  AutoComplete="Off" id="lavage" class="form-control"  runat="server"  ></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="row gx-3 mb-3">
                          
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputPhone">Modéle</label>
                              <asp:TextBox  AutoComplete="Off" id="modele" class="form-control"   runat="server"   ></asp:TextBox>
                            </div>
                         
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputclient">Client</label>
                               <asp:DropDownList ID="nomclient" runat="server"  DataSourceID="SqlDataSource3" DataTextField="nom" DataValueField="nom" class="form-control"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT [nom] FROM [Client]"></asp:SqlDataSource>
               
                            </div>
                        </div>
                      <asp:Button  runat="server" text="Confirmer"  class="btn btn-facebook " OnClick="Confirmer_Click"/>  
               
   <asp:Button  runat="server" text="Annuler" class="btn btn-warning" OnClick="Annuler_Click1"/>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
             
</div>

		<style type="text/css">
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

      body{margin-top:20px;
background-color:#f2f6fc;
color:#69707a;
}
.img-account-profile {
    height: 10rem;
}
.rounded-circle {
    border-radius: 50% !important;
}
.card {
    box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50 / 15%);
}
.card .card-header {
    font-weight: 500;
}
.card-header:first-child {
    border-radius: 0.35rem 0.35rem 0 0;
}
.card-header {
    padding: 1rem 1.35rem;
    margin-bottom: 0;
    background-color: rgba(33, 40, 50, 0.03);
    border-bottom: 1px solid rgba(33, 40, 50, 0.125);
}
.form-control, .dataTable-input {
    display: block;
    width: 100%;
    padding: 0.875rem 1.125rem;
    font-size: 0.875rem;
    font-weight: 400;
    line-height: 1;
    color: #69707a;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #c5ccd6;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: 0.35rem;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.nav-borders .nav-link.active {
    color: #0061f2;
    border-bottom-color: #0061f2;
}
.nav-borders .nav-link {
    color: #69707a;
    border-bottom-width: 0.125rem;
    border-bottom-style: solid;
    border-bottom-color: transparent;
    padding-top: 0.5rem;
    padding-bottom: 0.5rem;
    padding-left: 0;
    padding-right: 0;
    margin-left: 1rem;
    margin-right: 1rem;
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

