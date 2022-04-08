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
        function ajouter() {
            Swal.fire(
                'Le fournisseur est ajoutée ',
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

    <div class="wrapper bg-white mt-sm-5">
    <h4 class="pb-4 border-bottom" >Fournisseur</h4>
    <div class="d-flex align-items-start py-3 border-bottom"> <img src="images/offre.png" width="120px" >
        <div class="pl-sm-4 pl-2" id="img-section"> 
            <br />
            <br />
            <p>Citez tous les informations nécessaires <br /> pour ajouter des fournisseurs.</p> 
        </div>
    </div>
    <div class="py-2">
      
            <div class="col-md-6"> <label >Nom fournisseur</label>
            
             <asp:TextBox  AutoComplete="Off" id="nomFournisseur" class="bg-light form-control" placeholder="fournisseur"  runat="server"  width="500px">

             </asp:TextBox>

                   </div>

         
             
        </div>

        <div class="row py-2">
            
             <div class="col-md-6"> <label >GOTS PJ</label>
                 <asp:TextBox  AutoComplete="Off" id="Gotsp" class="bg-light form-control" placeholder="GOTS PJ"  runat="server"   width="220px">

             </asp:TextBox>
                 </div>
            
            
            <div class="col-md-6"> <label >Gots date d'expiration</label> 
                             <asp:TextBox  AutoComplete="Off" id="Gotsd" class="bg-light form-control" placeholder="GOTS PJ"  Type="date" runat="server" width="220px" >

             </asp:TextBox>

  </div>
           
        </div>


        <div class="row py-2">

             <div class="col-md-6 pt-md-0 pt-3"> <label >GRS PJ</label> 
              <asp:TextBox  AutoComplete="Off" id="grs" class="bg-light form-control" placeholder="GRS PJ"  runat="server"  width="220px">

             </asp:TextBox>
            </div>

            <div class="col-md-6"> <label >GRS date d'expiration </label> 
                 <asp:TextBox  AutoComplete="Off" id="grsdd" class="bg-light form-control" type="date"  runat="server"  width="220px">

             </asp:TextBox>

            </div>
            <div class="col-md-6 pt-md-0 pt-3" id="lang"> <label >OCS PJ</label>
                  <asp:TextBox  AutoComplete="Off" id="ocs" class="bg-light form-control" placeholder="OCS"  runat="server" width="220px" >

             </asp:TextBox>
        </div>
            
                        <div class="col-md-6"> <label >OSC date d'expiration </label> 
                 <asp:TextBox  AutoComplete="Off" id="oscd" class="bg-light form-control" type="date"  runat="server" width="220px" >

             </asp:TextBox>

            </div>
            <div class="col-md-6 pt-md-0 pt-3" id="lang"> <label >RCS PJ</label>
                  <asp:TextBox  AutoComplete="Off" id="rcs" class="bg-light form-control" placeholder="RCS"  runat="server" width="220px"  >

             </asp:TextBox>
        </div>
               <div class="col-md-6 pt-md-0 pt-3" id="lang"> <label >RCS date d'expiration</label>
                  <asp:TextBox  AutoComplete="Off" id="rcsd" class="bg-light form-control"  type="date"  runat="server"  width="220px" >

             </asp:TextBox>
        </div>

        <div class="py-3 pb-4 border-bottom">
            
               <asp:Button  runat="server" text="Ajouter" class="btn btn-primary mr-3" OnClick="Unnamed_Click"/>

               <asp:Button  runat="server" text="Annuler" class="btn border button" OnClick="Unnamed_Click1"/>
     
        </div>

       
 
</div>
 
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box
}

body {
    font-family: 'Poppins', sans-serif;
  
}

.wrapper {
    padding: 30px 50px;
    border: 1px solid #ddd;
    border-radius: 15px;
    margin: 10px auto;
    max-width: 600px
}

h4 {
    letter-spacing: -1px;
    font-weight: 400
}

.img {
    width: 70px;
    height: 70px;
    border-radius: 6px;
    object-fit: cover
}

#img-section p,
#deactivate p {
    font-size: 12px;
    color: #777;
    margin-bottom: 10px;
    text-align: justify
}

#img-section b,
#img-section button,
#deactivate b {
    font-size: 14px
}

label {
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 500;
    color: #777;
    padding-left: 3px
}

.form-control {
    border-radius: 10px
}

input[placeholder] {
    font-weight: 500
}

.form-control:focus {
    box-shadow: none;
    border: 1.5px solid #0779e4
}

select {
    display: block;
    width: 100%;
    border: 1px solid #ddd;
    border-radius: 10px;
    height: 40px;
    padding: 5px 10px
}

select:focus {
    outline: none
}

.button {
    background-color: #fff;
    color: #0779e4
}

.button:hover {
    background-color: #0779e4;
    color: #fff
}

.btn-primary {
    background-color: #0779e4
}

.danger {
    background-color: #fff;
    color: #e20404;
    border: 1px solid #ddd
}

.danger:hover {
    background-color: #e20404;
    color: #fff
}

@media(max-width:576px) {
    .wrapper {
        padding: 25px 20px
    }

    #deactivate {
        line-height: 18px
    }
}
    </style>

   
</asp:Content>













