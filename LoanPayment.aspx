<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoanPayment.aspx.cs" Inherits="Banking_System.LoanPayment1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="FormContainer">
        <section class="FormContainerTitle">
            <h2 class="Title">Loan Payment</h2>
        </section>
        <br />
        <br />
        <section class="FormSection_Datainput">
            <asp:Label ID="AccountNum_Label" runat="server" Text="AccountNumber:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="TRN_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="BranchID_Label" runat="server" Text="Branch ID:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="BranchID_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="PaymentAmount_Label" runat="server" Text="Amount:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="FirstName_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />

        </section>
        <section class="FormContainerSubmit">
            <section class="SubmitButton">
                <asp:Button ID="ClientFormContainerSubmitButton" runat="server" Text="Submit Payment" />
            </section>
        </section>
    </div>
     <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

</asp:Content>
