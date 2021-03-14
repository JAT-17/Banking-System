<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientFormJAT.aspx.cs" Inherits="Banking_System.ClientFormJAT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="ClientFormContainer">
        <section class="ClientFormContainerTitle">
            <h2 class="Title">Add Customer</h2>
        </section>

        <section class="ClientFormSection_Datainput">
            <asp:Label ID="TRN_Label" runat="server" Text="TRN:" CssClass="ClientFormLabel"></asp:Label>
            <asp:TextBox ID="TRN_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="BranchID_Label" runat="server" Text="Branch ID:" CssClass="ClientFormLabel"></asp:Label>
            <asp:TextBox ID="BranchID_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="FirstName_Label" runat="server" Text="First name:" CssClass="ClientFormLabel"></asp:Label>   
            <asp:TextBox ID="FirstName_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="LastName_Label" runat="server" Text="Last name:" CssClass="ClientFormLabel"></asp:Label>
            <asp:TextBox ID="LastNameTextBox1" runat="server" class="textbox"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Address_Label" runat="server" Text="Address:" CssClass="ClientFormLabel"></asp:Label>
            <asp:TextBox ID="Address_TextBox" runat="server" class="textbox"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="DOB_Label" runat="server" Text="DOB:" CssClass="ClientFormLabel"></asp:Label>
            <asp:TextBox ID="DOB_TextBox" runat="server" TextMode="Date" format="yyyy-mm-dd"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="email_Label" runat="server" Text="EMail:" CssClass="ClientFormLabel"></asp:Label>
            <asp:TextBox ID="Email_TextBox" runat="server" Width="60%" Placeholder="JoeGrind@gmail.com"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="IDType_Label" runat="server" Text="ID Type :" CssClass="ClientFormLabel"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Text="Nation ID" Value="Nation ID"> </asp:ListItem>
                <asp:ListItem Text="Passport" Value="Passport"> </asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />

            <asp:Label ID="ID_Labe" runat="server" Text="ID Number:" CssClass="ClientFormLabel" ></asp:Label> 
            <asp:TextBox ID="ID_TextBox" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:Label ID="Contact_Label" runat="server" Text="Contact Number:" CssClass="ClientFormLabel" ></asp:Label>
            <asp:TextBox ID="Contact_TextBox" runat="server" placeholder="876-xxx-xxxx"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Referee_Label" runat="server" Text="Referee:" CssClass="ClientFormLabel"></asp:Label>
            <asp:TextBox ID="Referee_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />
    </section>
            <section class="ClientFormContainerSubmit">
                <section class="SubmitButton">
                <asp:Button ID="ClientFormContainerSubmitButton" runat="server" Text="SUBMIT" />
                 </section>
            </section>


       



    </div>




    </div>




</asp:Content>
