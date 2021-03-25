<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DashBoard_Manager.aspx.cs" Inherits="Banking_System.DashBoard_Manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <div class="container">
       <section class="Panel">

           <br />
      &nbsp; &nbsp; <asp:LinkButton ID="BECUST" runat="server" OnClick="BECUST_Click" CausesValidation="false">Become a Customer</asp:LinkButton> 
           <br />
      &nbsp; &nbsp; <asp:LinkButton ID="CustomerSearch" runat="server" OnClick="CustomerSearch_Click" CausesValidation="false" >Customer Search</asp:LinkButton>
           <br />
     &nbsp; &nbsp;  <asp:LinkButton ID="LoanPayment" runat="server" OnClick="LoanPayment_Click" CausesValidation="false">Loan Payment</asp:LinkButton>
        <br />
     &nbsp; &nbsp;  <asp:LinkButton ID="CreditCardApproved" runat="server" OnClick="CreditCardApproved_Click" CausesValidation="false">Approved Credit Card listing</asp:LinkButton>
       <br />
    &nbsp; &nbsp;  <asp:LinkButton ID="Disbrusted" runat="server" OnClick="Disbrusted_Click" CausesValidation="false">Services Approved</asp:LinkButton>
<br />
    &nbsp; &nbsp;  <asp:LinkButton ID="MoneyTransfer" runat="server" OnClick="MoneyTransfer_Click" CausesValidation="false">Money Transfer</asp:LinkButton>

       </section>

   </div>

</asp:Content>
