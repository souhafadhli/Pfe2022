<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ConsulterFournisseur.aspx.cs" Inherits="Pfe2022.ConsulterFournisseur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/styleliste.css">
    <script src="swalert.js"></script>
     <script>
        
         function supprimer() {
             Swal.fire(
                 "Fournisseur est supprimé ",
                 ' avec succées',
                 'success')
         }
         function modifier() {
             Swal.fire(
                 "Fournisseur est bien modifé ",
                 ' avec succées',
                 'success')
         }
         
         function rechercher() {
             Swal.fire(
                 "aucun fournisseur avec cette nom ",
             )
         }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      
                  <section class="main-content">
		<div class="container">
             <h2 class="text-primary">Liste Des Fournisseurs</h2>
            <br />

                <div class="d-flex justify-content-center px-5">
            <div class="search"> <asp:TextBox ID="txtsearch"  class="search-input" placeholder="Rechercher..." runat="server" AutoPostBack="true" OnTextChanged="txtsearch_TextChanged"></asp:TextBox> <a  class="search-icon"> <img src="images/search.png" width="25px"/> </a> </div>
       </div>

            <br />
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Fournisseur]"></asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Fournisseur] where  NomFournisseur=@nm ">
              <SelectParameters>
                  <asp:ControlParameter ControlID="txtsearch" Name="nm" PropertyName="Text" />
              </SelectParameters>
            </asp:SqlDataSource>
            <br />
           
             
				
            <asp:GridView ID="GridView1" runat="server" class="table" AutoGenerateColumns ="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BorderColor="#CC0099" BorderStyle="None">
              <Columns>   
          <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="images/logo.png" HeaderText="Photo" ReadOnly="True" >
                        <ControlStyle Height="40px" Width="40px" />
                    </asp:ImageField>
                 
                  
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
               
                  <asp:BoundField DataField="NomFournisseur" HeaderText="Fournisseur" SortExpression="NomFournisseur" />
                  <asp:BoundField DataField="GOTSPJ" HeaderText="GOTSPJ" SortExpression="GOTSPJ" />
                <asp:BoundField DataField="GOTSdate" HeaderText="GOTSdate" SortExpression="GOTSdate" />
                <asp:BoundField DataField="GRSPJ" HeaderText="GRSPJ" SortExpression="GRSPJ" />
                <asp:BoundField DataField="GRSdate" HeaderText="GRSdate" SortExpression="GRSdate" />
                <asp:BoundField DataField="OCSPJ" HeaderText="OCSPJ" SortExpression="OCSPJ" />
                <asp:BoundField DataField="OSCdate" HeaderText="OSCdate" SortExpression="OSCdate" />
                <asp:BoundField DataField="RCSPJ" HeaderText="RCSPJ" SortExpression="RCSPJ" />
                <asp:BoundField DataField="RCSdate" HeaderText="RCSdate" SortExpression="RCSdate" />
              

                
              
            
                <asp:TemplateField  HeaderText="Action ">
                                <ItemTemplate>
                               
                          <asp:ImageButton CssClass="center-block" runat="server" ID="modifier"  Text="Modifier"  ImageUrl="/images/124.png" Width="30px" OnClick="Modifier_Click1" ></asp:ImageButton>
                                      

                        <asp:ImageButton CssClass="center-block" runat="server" ID="supprimer" Text="supprimer" ImageUrl="/images/to.png" Width="30px" OnClick="supp_Click"></asp:ImageButton>
                                         

                                </ItemTemplate>
                      
                                   
                                   

                                  
                               <HeaderStyle CssClass="centered"></HeaderStyle>
                            </asp:TemplateField>
               

            </Columns>
          
          
        </asp:GridView>
                           </div>
	</section>
                 
                <br />
              <br />
              <br />
              <br />
         
           
        <div class="container rounded bg-white mt-5">
             <br />
        <br />
       
    <div class="row">
       
        <div class="col-md-4 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img src="images/j7.png" width="150" style="position:center"> <br /></div>
        </div>
        <br />
        <div class="col-md-8">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <div class="d-flex flex-row align-items-center back"><i class="fa fa-long-arrow-left mr-1 mb-1"></i>
                   
                  <a href="ConsulterFournisseur.aspx" style="color:black;text-decoration:none">     <h6>Retourner à la liste</h6></a> 
                    </div>
                    <h6 class="text-right" style="color:blue"><b>Modifier Fournisseur</b></h6>
                </div>



                <div class="row mt-2">
                  
					   
				
                    <div class="col-md-6">  <asp:TextBox  AutoComplete="Off" id="Id" class="form-control"  runat="server" ></asp:TextBox></div>
                    <div class="col-md-6"><asp:TextBox  AutoComplete="Off" id="nomFournisseur" class="form-control"  runat="server" placeholder="Fournisseur" ></asp:TextBox></div>

                </div>
                <div class="row mt-3">
                    
                    <div class="col-md-6">  <asp:TextBox  AutoComplete="Off" id="Gotsp" class="form-control"  runat="server" placeholder="GOTS PJ" ></asp:TextBox></div>
                    <div class="col-md-6"><asp:TextBox  AutoComplete="Off" id="Gotsd" class="form-control"  runat="server" placeholder="GOTS date d'expiration" ></asp:TextBox></div>
                </div>

                <div class="row mt-3">
<div class="col-md-6">  <asp:TextBox  AutoComplete="Off" id="grs" class="form-control"  runat="server" placeholder="GRS PJ" ></asp:TextBox></div>
                    <div class="col-md-6"><asp:TextBox  AutoComplete="Off" id="grsdd" class="form-control"  runat="server" placeholder="GRS date d'expiration" ></asp:TextBox></div>
                </div>
                <div class="row mt-3">
<div class="col-md-6">  <asp:TextBox  AutoComplete="Off" id="rcs" class="form-control"  runat="server" placeholder="RCS PJ" ></asp:TextBox></div>
                    <div class="col-md-6"><asp:TextBox  AutoComplete="Off" id="rcsd" class="form-control"  runat="server" placeholder="RSC date d'expiration" ></asp:TextBox></div>
                </div>


                    <div class="row mt-3">
<div class="col-md-6">  <asp:TextBox  AutoComplete="Off" id="ocs" class="form-control"  runat="server" placeholder="OCS PJ" ></asp:TextBox></div>
                    <div class="col-md-6"><asp:TextBox  AutoComplete="Off" id="oscd" class="form-control"  runat="server" placeholder="OSC date d'expiration" ></asp:TextBox></div>
                </div>



                <br />
<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
								 <asp:Button  runat="server" text="Confirmer"  class="btn btn-primary btn-lg btn-radius"   OnClick="Confirmer_Click" />  
               
   <asp:Button  runat="server" text="Annuler" class="btn btn-warning btn-lg btn-radius" OnClick="Annuler_Click1"/>
		</div>
			</div>
		</div>
            </div>
        </div>
    </div>
</div>
      <style type="text/css">
          body {
     background: #f5f6fa;
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


.form-control:focus {
    box-shadow: none;
    border-color: #BA68C8
}

.profile-button {
    background: #BA68C8;
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: #682773
}

.profile-button:focus {
    background: #682773;
    box-shadow: none
}

.profile-button:active {
    background: #682773;
    box-shadow: none
}

.back:hover {
    color: #682773;
    cursor: pointer
}
          </style>
</asp:Content>

