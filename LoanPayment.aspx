<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoanPayment.aspx.cs" Inherits="Banking_System.LoanPayment" %>
<asp:Content ID="LoanPayment" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="Container">
    <div class="Jumbotron">
    <asp:Table ID="Table1" runat="server" Height="168px" Width="377px">
        <asp:TableRow>
            <asp:TableHeaderCell> PAYMENT ON A LOAN</asp:TableHeaderCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
               <asp:Label ID="Label1" runat="server" Text="Label">Enter Customer's Acc Number:</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Label">Amount:</asp:Label>
                &nbsp
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="ButtonAddC" runat="server" Text="Find Customer" />
                &nbsp
                <asp:Button ID="Button2" runat="server" Text="Button" />
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>
</div>
        </div>
</asp:Content>
