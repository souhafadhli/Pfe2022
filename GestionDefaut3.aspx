<%@ Page Title="" Language="C#" MasterPageFile="~/Visiteur.Master" AutoEventWireup="true" CodeBehind="GestionDefaut3.aspx.cs" Inherits="WebApplication.GestionDefaut3" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <title>Gestion défauts</title>
    
   
   
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
 	<link rel="stylesheet" type="text/css" href="css/style2.css">       
       
       
    
    <link rel="stylesheet" href="css/responsive.css">
    <script src="swalert.js" type="text/javascript"></script>
     <script>
         function ajouter() {
             Swal.fire(
                 'Défaut ajouté ',
                 'avec succées',
                 'success'
             )
         }
         function modifier() {
             Swal.fire(
                 'Défaut bien modifié ',
                 'avec succées',
                 'success'
             )
         }
         function supprimer() {
             Swal.fire(
                 'Défaut bien supprimer ',
                 'avec succées',
                 'success'
             )
         }
         function rechercher() {
             Swal.fire(
                'Aucun défaut avec ce code ',
                 
                 'erreur'
             )
         }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                          
                                    <br />
                                    <br />    <br />
    <form runat="server">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list single-page-breadcome">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcome-heading">
                                            <form role="search" class="sr-input-func">


                                             

                                              <div class="search"> <asp:TextBox ID="txtsearch"  class="search-int form-control" placeholder="Rechercher ici..." runat="server" AutoPostBack="true" OnTextChanged="txtsearch_TextChanged">   </asp:TextBox></div>
                                           
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <ul class="breadcome-menu">
                                            <li><a href="gestiondefaut.aspx">Tissus</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">Gestion Des Défauts</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
              
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap drp-lst" >
                       <h4 style="padding-left:410px">Liste Des Défauts  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                           &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; 
                            <button type="button"  class="btn btn-success"  data-toggle="modal" data-target="#myModal"  color="white" > <i class="mdi mdi-plus-circle-outline me-2 text-white" ></i><b>Ajouter</b></button> 
                         </h4> 
                            <div class="add-product">
 
                            </div>
<center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Defaut]"></asp:SqlDataSource>
      
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Defaut] where code=@cd ">
              <SelectParameters>
                  <asp:ControlParameter ControlID="txtsearch" Name="cd" PropertyName="Text" />
              </SelectParameters>
            </asp:SqlDataSource>

      <asp:GridView ID="GridView1" runat="server" class="asset-inner"  AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="900px">
            
                  

            <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="code" HeaderText="Code" SortExpression="code" />
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
          
             <asp:TemplateField  HeaderText="Action" >
                                <ItemTemplate>
         

                                    
                                      <button type="button" class="btn btn-facebook"  data-toggle="modal" data-target="#myModal1"  color="white" onclick="Modifier_Click1"> <i class="mdi mdi-pencil-box-outline me-2 text-white" ></i> Modifier
      </button>

        
          <asp:Button id="supprimer" runat="server" class="btn btn-danger"  Text="Supprimer" style="width:130px;height:45px" OnClick="supprimer_Click1" />   
                              
                                    </div></ItemTemplate>
                      
                              
                                   

                                  
                               <HeaderStyle CssClass="centered"></HeaderStyle>
                            </asp:TemplateField>  
            </Columns>
                 
                <HeaderStyle BorderColor="White" BorderStyle="None" ForeColor="#333333" />
                
                <PagerStyle BorderColor="White" BorderStyle="None" />
                
            </asp:GridView>

    
  
         <div class="modal" id="myModal">
         <div class="modal-dialog">
            <div class="modal-content">
            
               <div class="modal-header">
                  <h4 class="modal-title">Ajouter Défaut</h4>

                  

					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="row my-4">
            <div class="col-md-6"> 
              <asp:TextBox  id="code" AutoComplete="Off"  runat="server"  placeholder="Entrer le code"  ></asp:TextBox>
                   </div>
   <div class="col-md-6"> 
              <asp:TextBox  id="description" AutoComplete="Off"  runat="server"  placeholder="Entrer la description"  ></asp:TextBox>
               </div>
              
               <div class="modal-footer">
             <asp:Button ID="Ajouter" runat="server" Text="Confirmer" class="btn btn-primary mr-3"  OnClick="Ajouter_Click" />
          
                                   
               </div>
            </div>
         </div>
      </div>

</div>
             </div>


           <div class="modal" id="myModal1">
         <div class="modal-dialog">
            <div class="modal-content">
            
               <div class="modal-header">
                  <h4 class="modal-title">Modifier Défaut</h4>

                  

					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="row my-4">
                          <div class="col-md-6"> 
              <asp:TextBox  id="id" AutoComplete="Off"  runat="server"  placeholder="ID"  ></asp:TextBox>
                   </div>
            <div class="col-md-6"> 
              <asp:TextBox  id="cd" AutoComplete="Off"  runat="server"  placeholder="Entrer le code"  ></asp:TextBox>
                   </div>
                     
   <div class="col-md-6"> 
          <br />
              <asp:TextBox  id="ds" AutoComplete="Off"  runat="server"  placeholder="Entrer la description"  ></asp:TextBox>
               </div>
               <!-- Modal footer -->
               <div class="modal-footer">
             <asp:Button ID="CModifier" runat="server" Text="Confirmer"  class="btn btn-primary btn-sm"  OnClick="CModifier_Click"/>
          
                                   
               </div>
            </div>
         </div>
      </div>

    </div>
</div>
           




           

    </form>   
           
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  
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

    </style>
 
</asp:Content>


