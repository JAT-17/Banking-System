<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TotalLoanForPeriod.aspx.cs" Inherits="Banking_System.TotalLoanForPeriod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <div class="FormContainer">
        <section class="FormContainerTitle">
            <h2 class="Title">Disburst Loans</h2>
        </section>
        <br />
        <br />
        <section class="FormSection_Datainput">

           <asp:Label ID="DOB_Label" runat="server" Text="From:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="From_TextBox" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" ErrorMessage="Required" ControlToValidate="From_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
           <br />
            <br />
            
            <asp:Label ID="Label1" runat="server" Text="To:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="To_TextBox" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="To_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
            
            
            
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </section>
        <section class="FormContainerSubmit">
            <section class="SubmitButton">
                <asp:Button ID="ClientFormContainerSubmitButton" runat="server" Text="Search" OnClick="ClientFormContainerSubmitButton_Click" />
                <asp:Label ID="Output_Message" runat="server" CssClass="ClientFormSubmitResult"></asp:Label>
            </section>
        </section>
    </div>
     <br />

    <asp:GridView ID="GridView3" runat="server"></asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />






</asp:Content>

