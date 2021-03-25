<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApprovedCreditCard.aspx.cs" Inherits="Banking_System.ApprovedCreditCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="FormContainerSubmit">
        <section class="SubmitButton">
            <asp:Button ID="CustomerSearchSubmitButton" runat="server" Text="GENERATE" OnClick="ApprovedCreditCardSubmitButton_Click" />
            <asp:Label ID="SearchResult" runat="server" CssClass="ClientFormSubmitResult"></asp:Label>
        </section>
    </section>


    <div class="FormContainerResults">
        <section class="FormContainerTitle">
            <h2 class="Title">Search Result</h2>
        </section>

        <asp:GridView ID="GridView2" runat="server"></asp:GridView>




    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
