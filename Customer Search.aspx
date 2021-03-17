<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer Search.aspx.cs" Inherits="Banking_System.Customer_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br />
    <br />
    <br />
     <br />
    <br />
    <br />
    <div class="FormContainer">
        <section class="FormContainerTitle">
            <h2 class="Title">Customer Search</h2>
        </section>
        <br />
        <br />
        <br />
        <section class="CustomerSearch_Datainput">
            <asp:Label ID="CustomerSearch_Label" runat="server" Text=" Customer TRN:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="TRN_TextBox" runat="server"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidatorTRNCustomerSearch" runat="server" ErrorMessage="Invalid TRN" ControlToValidate="TRN_TextBox" SetFocusOnError="true" ForeColor="Red" ValidationExpression="\d{9}"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
        <br />
        </section>
        <section class="FormContainerSubmit">
            <section class="SubmitButton">
                <asp:Button ID="CustomerSearchSubmitButton" runat="server" Text="SERACH" OnClick="CustomerSearchSubmitButton_Click" />
            </section>
        </section>
    </div>
    
   -- <br />
    <br />
    <br />
    
    <div class="FormContainerResults">
        <section class="FormContainerTitle">
            <h2 class="Title">Search Result</h2>
        </section>
                   

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TRN" CssClass="CustomerSearchResultgridview">
            <Columns>
                <asp:BoundField DataField="TRN" HeaderText="  TRN  " ReadOnly="True" SortExpression="TRN" />
                <asp:BoundField DataField="Branch_ID" HeaderText="  Branch ID  " SortExpression="Branch_ID" />
                <asp:BoundField DataField="FName" HeaderText="  First Name  " SortExpression="FName" />
                <asp:BoundField DataField="LName" HeaderText="  Last Name " SortExpression="LName" />
                <asp:BoundField DataField="Address" HeaderText="  Address  " SortExpression="Address" />
                <asp:BoundField DataField="DOB" HeaderText="  Date of Birth  " SortExpression="DOB" />
                <asp:BoundField DataField="Email" HeaderText="  Email  " SortExpression="Email" />
                <asp:BoundField DataField="Id_Type" HeaderText=" Id Type " SortExpression="Id_Type" />
                <asp:BoundField DataField="ID" HeaderText="  ID  " SortExpression="ID" />
                <asp:BoundField DataField="Referee" HeaderText="  Referee  " SortExpression="Referee" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="  Phone Number  " SortExpression="PhoneNumber" />
            </Columns>
        </asp:GridView>
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
