<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoanPayment.aspx.cs" Inherits="Banking_System.LoanPayment1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="FormContainer">
        <section class="FormContainerTitle">
            <h2 class="Title">Loan Payment</h2>
        </section>
        <br />
        <br />
        <section class="FormSection_Datainput">
            <asp:Label ID="AccountNum_Label" runat="server" Text="Account Number:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="AccountNumber_TextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAccountNumber" runat="server" ErrorMessage="Account number is required" ControlToValidate="AccountNumber_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
           
            <asp:Label ID="PaymentAmount_Label" runat="server" Text="Amount:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="PaymentAmount_TextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPaymentAmount" runat="server" ErrorMessage="Amount required" ControlToValidate="PaymentAmount_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator> 
            <br />
            <br />
            <br />
            <br />
            <br />

        </section>
        <section class="FormContainerSubmit">
            <section class="SubmitButton">
                <asp:Button ID="ClientFormContainerSubmitButton" runat="server" Text="Submit Payment" OnClick="ClientFormContainerSubmitButton_Click" />
                <asp:Label ID="Output_Message" runat="server" CssClass="ClientFormSubmitResult"></asp:Label>
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
