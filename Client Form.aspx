<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Client Form.aspx.cs" Inherits="Banking_System.Client_Form" %>

<asp:Content ID="ClientForm" ContentPlaceHolderID="MainContent" runat="server">

    <div class="ContainerALex"> 
    
     <div class="  jumbotron" style="background-image: url('Images/clientFormBackground.png')" id="ClientFormBackground">
 <asp:Table class="ClientFormTable" runat="server" Height="169px" Width="235px">
        <asp:TableRow >
           
            <asp:TableHeaderCell> <h3> ADD CUSTOMER</h3></asp:TableHeaderCell>
               
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
               <asp:Label ID="Label1" runat="server" Text="Label">TRN</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label">Branch ID</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Label">FirstName</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Label">Lastname</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Label">Address</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Label">DOB</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Label">Email</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Label">ID Type</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Label">ID</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Label">Contact #</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text="Label">Referee</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                <br />
                <br />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="ButtonAddC" runat="server" Text="Add Customer" />
                &nbsp
                <asp:Button ID="Button2" runat="server" Text="Button" />
            </asp:TableCell>
        </asp:TableRow>
     </asp:Table>
   </div>
     
     </div>
    <
</asp:Content>
