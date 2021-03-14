<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer Search.aspx.cs" Inherits="Banking_System.Customer_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="FormContainer">
        <section class="FormContainerTitle">
            <h2 class="Title">Customer Search</h2>
        </section>

        <section class="CustomerSearch_Datainput">
            <asp:Label ID="CustomerSearch_Label" runat="server" Text="Customer TRN:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="TRN_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />

        </section>
        <section class="FormContainerSubmit">
            <section class="SubmitButton">
                <asp:Button ID="ClientFormContainerSubmitButton" runat="server" Text="SERACH" />
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
