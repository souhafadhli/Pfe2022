<%@ Page Title="" Language="C#" MasterPageFile="~/Gestionnaire.Master" AutoEventWireup="true" CodeBehind="Listereclamationenattente.aspx.cs" Inherits="WebApplication.Listereclamationenattente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Liste reclamation en attente</title>
  <script src="swalert.js"></script>
     <script>

         function refuser() {
             Swal.fire(
                 "Réclamation est refuser ",
                 ' avec succées',
                 'success')
         }
         function accepter() {
             Swal.fire(
                 "Réclamation est accepter ",
                 ' avec succées',
                 'success')
         }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
	<div class="container rounded mt-5 bg-white p-md-5">
    <div class="h3 font-weight" style="color:cornflowerblue">Liste Des Réclamations En Attente
        <div class="search-box">
                             
                            <i class="material-icons"><img src="images/chercher.png" width="25px"/></i>
                            <asp:TextBox ID="txtsearch"  class="form-control" placeholder="Rechercher..." runat="server" AutoPostBack="true" OnTextChanged="txtsearch_TextChanged"/>
                        </div>
                    
    </div>
        <br />
        <br />
    <div class="table-responsive">
        
	    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Reclamation] where état='En attente'  ">
             
            </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [dbo].[Reclamation] a , [dbo].Utilisateurs b where état='En attente' and objet=@o  ">
              <SelectParameters>
                  <asp:ControlParameter ControlID="txtsearch" Name="o" PropertyName="Text" />
              </SelectParameters>
            </asp:SqlDataSource>
   
        <asp:GridView ID="GridView1" runat="server" class="table" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"    >
         
        <Columns>
     
            <asp:BoundField DataField="NomVisiteur" HeaderText="Nom  Visiteur" SortExpression="NomVisiteur"  HeaderStyle-ForeColor="Gray" >
<HeaderStyle ForeColor="Gray"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField DataField="PrenomVisiteur" HeaderText="Prenom Visiteur" SortExpression="PrenomVisiteur" HeaderStyle-ForeColor="Gray" >
<HeaderStyle ForeColor="Gray"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField DataField="objet" HeaderText="Objet" SortExpression="objet" HeaderStyle-ForeColor="Gray"  >
<HeaderStyle ForeColor="Gray"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description"  HeaderStyle-ForeColor="Gray">
<HeaderStyle ForeColor="Gray"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField DataField="état" HeaderText="État" SortExpression="état" HeaderStyle-ForeColor="Gray"   ItemStyle-ForeColor="#CC0000" >
<HeaderStyle ForeColor="Gray"></HeaderStyle>

<ItemStyle ForeColor="#CC0000"></ItemStyle>
            </asp:BoundField>
 
            <asp:TemplateField  HeaderText="Action ">
                                <ItemTemplate>
                               
                          <asp:ImageButton CssClass="center-block" runat="server" ID="accept" Text="Acepter" OnClick="accept_Click" ImageUrl="/images/accepter.png" Width="35px" ></asp:ImageButton>
                      
                        <asp:ImageButton CssClass="center-block" runat="server" ID="refus" Text="refuser" OnClick="refus_Click" ImageUrl="/images/refuser.png" Width="35px"></asp:ImageButton>
                             
                                </ItemTemplate>
                      
                               <HeaderStyle CssClass="centered"></HeaderStyle>
                            </asp:TemplateField>
          

            
        </Columns>
          
               
                <PagerStyle BorderColor="White" BorderStyle="None" />
              
                
    </asp:GridView>
			
    </div>
</div>

	<style type="text/css">

     @import url('https://fonts.googleapis.com/css2?family=PT+Sans:wght@700&family=Poppins:wght@600&display=swap');

* {
    box-sizing: border-box
}

body {
   background: whitesmoke;
  
    color: #666;
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
.main-content {
	padding-top: 100px;
	padding-bottom: 100px;

}

.h3 {
    color: #444;
    font-family: 'PT Sans', sans-serif
}

thead {
    font-family: 'Poppins', sans-serif;
    font-weight: bolder;
    font-size: 20px;
    color: #666
}

.table {
	
	border-collapse: separate;
	width:100%;
}

.name {
    display: inline-block
}

.bg-blue {
    background-color: #EBF5FB;
    border-radius: 8px
}

.fa-check,
.fa-minus {
    color: blue
}

.bg-blue:hover {
    background-color: #3e64ff;
    color: #eee;
    cursor: pointer
}

.bg-blue:hover .fa-check,
.bg-blue:hover .fa-minus {
    background-color: #3e64ff;
    color: #eee
}

.table thead th,
.table td {
    border: none
}

.table tbody td:first-child {
    border-bottom-left-radius: 10px;
    border-top-left-radius: 10px
}

.table tbody td:last-child {
    border-bottom-right-radius: 10px;
    border-top-right-radius: 10px
}

#spacing-row {
    height: 10px
}

@media(max-width:575px) {
    .container {
        width: 125%;
        padding: 20px 10px
    }
}


	</style>

</asp:Content>
