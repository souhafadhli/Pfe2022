<%@ Page Title="" Language="C#" MasterPageFile="~/Administrateur.Master" AutoEventWireup="true" CodeBehind="Listereclamation.aspx.cs" Inherits="WebApplication.Listereclamation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
		<title>historique des reclamations</title>
	<script src="swalert.js"></script>
     <script>

       
         function rechercher() {
             Swal.fire(
                 "aucun réclamation avec cette objet ",
             )
         }

     </script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <br />
    <br />
    <br />
    <div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Liste Des Réclamations</h2></div>
                    <div class="col-sm-4">
                        <div class="search-box">
                            <i class="material-icons">&#xE8B6;</i>
                              <asp:TextBox ID="txtsearch"  class="form-control" placeholder="Rechercher..." runat="server" AutoPostBack="true" OnTextChanged="txtsearch_TextChanged" />
                           
                        </div>
                    </div>
                </div>
            </div>
              
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>"  SelectCommand="SELECT * FROM [dbo].[Reclamation]"></asp:SqlDataSource> 
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [dbo].[Reclamation] a , [dbo].Utilisateurs b where  b.nom=a.NomVisiteur and objet=@o  ">
              <SelectParameters>
                  <asp:ControlParameter ControlID="txtsearch" Name="o" PropertyName="Text" />
              </SelectParameters>
            </asp:SqlDataSource>
    <asp:GridView  ID="GridView1" class="table table-striped table-hover table-bordered" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id" ForeColor="#333333" GridLines="None">
        <Columns>

         
      
			<asp:BoundField DataField="NomVisiteur" HeaderText="Nom Visiteur" SortExpression="NomVisiteur" >
            </asp:BoundField>
			<asp:BoundField DataField="PrenomVisiteur" HeaderText="Prénom Visiteur" SortExpression="PrenomVisiteur" >
        </asp:BoundField>
			
			<asp:BoundField DataField="état" HeaderText="État" SortExpression="état"  >
            </asp:BoundField>
			<asp:BoundField DataField="NomGestionnaire" HeaderText="Nom Gestionnaire" SortExpression="NomGestionnaire" >
            </asp:BoundField>
			<asp:BoundField DataField="PrenomGestionnaire" HeaderText="Prénom Gestionnaire" SortExpression="PrenomGestionnaire" >
            </asp:BoundField>
            <asp:TemplateField  HeaderText="Action" >
                                <ItemTemplate>
            <i class="material-icons">&#xE417;<Button type="button"   class="btn"  data-toggle="modal" data-target="#myModal1" OnClick="detail"  >Details</Button></i>
						</ItemTemplate>
                         <HeaderStyle CssClass="centered"></HeaderStyle>
                            </asp:TemplateField>  

        </Columns>
             <PagerStyle BorderColor="White" BorderStyle="None" />
    </asp:GridView>



    <!-- Modale -->
           <div class="modal" id="myModal1">
         <div class="modal-dialog">
            <div class="modal-content">
          <center><img src="images/mlk.jpg"  class="avatar" /></center> 
                <br />
             
               <div class="modal-header">
                  <h4 class="modal-title">plus de détails </h4>

                  

					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="row my-4">
                          <div class="col-md-6"> 
          
                              <asp:Label ID="idr"  class="control-label col-lg-2" runat="server"   ></asp:Label>
           
                   </div>
                        
           
           </div>
                    <div class="row my-4">
            <div class="col-md-6"> 
                  <asp:Label  id="Label4" Text="Descreption des récramation:" AutoComplete="Off"  runat="server"    ></asp:Label>
              <asp:Label  id="desc" AutoComplete="Off"  runat="server"    ></asp:Label>
                   </div>
                     <div class="col-md-6"> 
                  <asp:Label  id="Label2" Text="État:" AutoComplete="Off"  runat="server"    ></asp:Label>
              <asp:Label  id="etat" AutoComplete="Off"  runat="server"    ></asp:Label>
                   </div>
          </div>
                     <div class="row my-4">
               <div class="col-md-6">
          <asp:Label  id="Label5" Text="Nom de gestionnaire:" AutoComplete="Off"  runat="server"    ></asp:Label>
              <asp:Label  id="nomg" AutoComplete="Off"  runat="server"    ></asp:Label>
                <asp:Label  id="prenomg" AutoComplete="Off"  runat="server"    ></asp:Label>                   
              </div>
                   </div>     
               </div>
            </div>
         </div>
      </div>

    </div>
</div>
       
     
     
  
<script type="text/javascript" src="./assets/scripts/main.js"></script>
    <style type="text/css">
        label {
    display: block;
    font-size: 0.8rem;
    font-weight: 700
}

input {
    border: none;
    outline: none;
    border-bottom: 2px solid #ddd;
    width: 100%;
    padding-bottom: 10px
}
.wrapper .col-md-6:hover label {
    color: blue
}

.wrapper .col-md-6:hover input,
.wrapper .col-md-6:hover #country {
 border-color: blue;
    cursor: pointer
}

.wrapper .col-md-6 input:focus {
    border-color: blue
}

.avatar {
	 width: 70px;
  height: 70px;
  border-radius: 50%;
  position: absolute;
  top: -35px;
   left: calc(50% - 50px); 
 
}

  body {
    color: #566787;
    background: #f5f5f5;
    font-family: 'Roboto', sans-serif;
}
.table-responsive {
    margin: 30px 0;
}
.table-wrapper {
    min-width: 1000px;
    background: #fff;
    padding: 20px;
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {
    padding-bottom: 10px;
    margin: 0 0 10px;
    min-width: 100%;
}
.table-title h2 {
    margin: 8px 0 0;
    font-size: 22px;
}
.search-box {
    position: relative;        
    float: right;
}
.search-box input {
    height: 34px;
    border-radius: 20px;
    padding-left: 35px;
    border-color: #ddd;
    box-shadow: none;
}
.search-box input:focus {
    border-color: #3FBAE4;
}
.search-box i {
    color: #a0a5b1;
    position: absolute;
    font-size: 19px;
    top: 8px;
    left: 10px;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
}
table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
    background: #f5f5f5;
}
table.table th i {
    font-size: 13px;
    margin: 0 10px;
    cursor: pointer;
}
table.table td:last-child {
    width: 130px;
}
table.table td a {
    color: #a0a5b1;
    display: inline-block;
    margin: 0 5px;
}

table.table td i {
    font-size: 19px;
 
}    
   

	</style>




           

       
           
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  
<script type="text/javascript" src="./assets/scripts/main.js"></script>
  
</asp:Content>

