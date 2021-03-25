<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Money Transfer.aspx.cs" Inherits="Banking_System.Money_Transfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <div class="FormContainer">
        <section class="FormContainerTitle">
            <h2 class="Title">Transfer Funds</h2>
        </section>
        <br />
        <br />
        <section class="FormSection_Datainput">
            <asp:Label ID="Sender_AccountNum_Label" runat="server" Text="Sender's Account Number:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="Sender_AccountNumber_TextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator_S_AccountNumber" runat="server" ErrorMessage="Account number is required" ControlToValidate="Sender_AccountNumber_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="Receiver_AccountNum_Label" runat="server" Text="Receiver's Account Number:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="Receiver_AccountNumber_TextBox" runat="server" ></asp:TextBox>         
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Account number is required" ControlToValidate="Receiver_AccountNumber_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
           
            <asp:Label ID="PaymentAmount_Label" runat="server" Text="Amount:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="PaymentAmount_TextBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPayment_Amount" runat="server" ErrorMessage="Must be a number" ControlToValidate="PaymentAmount_TextBox" SetFocusOnError="true" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPaymentAmount" runat="server" ErrorMessage="Amount required" ControlToValidate="PaymentAmount_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator> 
            <br />
            <br />
            
            <asp:Label ID="PIN_Label" runat="server" Text="PIN:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="PIN_TextBox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPIN" runat="server" ErrorMessage="Transfer PIN required" ControlToValidate="PIN_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator> 
            
            <br />
            <br />
            <br />
            <br />
            <br />

        </section>
        <section class="FormContainerSubmit">
            <section class="SubmitButton">
                <asp:Button ID="MoneyTransferSubmitButton" runat="server" Text="Transfer" OnClick="MoneyTransferSubmitButton_Click" />
                <asp:Label ID="MoneyTransferSubmitResult" runat="server" CssClass="MoneyTransferSubmitResult"></asp:Label>
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
