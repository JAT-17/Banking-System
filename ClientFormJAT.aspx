<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientFormJAT.aspx.cs" Inherits="Banking_System.ClientFormJAT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="FormContainer">
        <section class="FormContainerTitle">
            <h2 class="Title">Add Customer</h2>
        </section>

        <section class="FormSection_Datainput">
            <asp:Label ID="TRN_Label" runat="server" Text="TRN:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="TRN_TextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTRN" runat="server" ErrorMessage="TRN is required" ControlToValidate="TRN_TextBox" SetFocusOnError="true" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorTRN" runat="server" ErrorMessage="Invalid TRN" ControlToValidate="TRN_TextBox" SetFocusOnError="true" ForeColor="Red" ValidationExpression="\d{9}"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="BranchID_Label" runat="server" Text="Branch ID:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="BranchID_TextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBranchID" runat="server" ErrorMessage="Branch ID is required" ControlToValidate="BranchID_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="FirstName_Label" runat="server" Text="First name:" CssClass="FormLabel"></asp:Label>   
            <asp:TextBox ID="FirstName_TextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" ErrorMessage="First name is required" ControlToValidate="FirstName_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <br />
            <br />

            <asp:Label ID="LastName_Label" runat="server" Text="Last name:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="LastNameTextBox" runat="server" class="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ErrorMessage="Last name is required" ControlToValidate="LastNameTextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="Address_Label" runat="server" Text="Address:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="Address_TextBox" runat="server" class="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ErrorMessage="Address is required" ControlToValidate="Address_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="DOB_Label" runat="server" Text="DOB:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="DOB_TextBox" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" ErrorMessage="Date of birth is required" ControlToValidate="DOB_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="email_Label" runat="server" Text="EMail:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="Email_TextBox" runat="server" Width="60%" Placeholder="JoeGrind@gmail.com"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="Email_TextBox" SetFocusOnError="true" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
            <br />
            <br />

            <asp:Label ID="IDType_Label" runat="server" Text="ID Type :" CssClass="FormLabel"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Text="Select ID" Value="-1"> </asp:ListItem>
                <asp:ListItem Text="Nation ID" Value="Nation ID"> </asp:ListItem>
                <asp:ListItem Text="Passport" Value="Passport"> </asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorIDType" runat="server" ErrorMessage="ID type is required" ControlToValidate="DropDownList1" SetFocusOnError="true" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="ID_Labe" runat="server" Text="ID Number:" CssClass="FormLabel" ></asp:Label> 
            <asp:TextBox ID="ID_TextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorID" runat="server" ErrorMessage="ID number is required" ControlToValidate="ID_TextBox" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="Contact_Label" runat="server" Text="Contact Number:" CssClass="FormLabel" ></asp:Label>
            <asp:TextBox ID="Contact_TextBox" runat="server" placeholder="876xxxxxxx"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorContact" runat="server" ErrorMessage="Invalid Number" ControlToValidate="Contact_TextBox" SetFocusOnError="true" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            <br />
            <br />

            <asp:Label ID="Referee_Label" runat="server" Text="Referee:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="Referee_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Type_Of_User" runat="server" Text="User:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="Type_Of_User_TextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorType_Of_User" runat="server" ErrorMessage=" Required" ControlToValidate="Type_Of_User_TextBox" SetFocusOnError="true" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid TRN" ControlToValidate="Type_Of_User_TextBox" SetFocusOnError="true" ForeColor="Red" ValidationExpression="\d{1}"></asp:RegularExpressionValidator>
            <br />
            <br />

            <asp:Label ID="PIN_Label1" runat="server" Text="PIN:" CssClass="FormLabel"></asp:Label>
            <asp:TextBox ID="PIN_TextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPIN" runat="server" ErrorMessage=" Required" ControlToValidate="PIN_TextBox" SetFocusOnError="true" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPIN" runat="server" ErrorMessage="Invalid TRN" ControlToValidate="PIN_TextBox" SetFocusOnError="true" ForeColor="Red" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
            <br />
            <br />

    </section>
            <section class="FormContainerSubmit">
                <section class="SubmitButton">
                <asp:Button ID="ClientFormContainerSubmitButton" runat="server" Text="SUBMIT" OnClick="ClientFormContainerSubmitButton_Click" />
                     <asp:Label ID="ClientFormSubmitResult" runat="server"  CssClass="ClientFormSubmitResult" ></asp:Label>
                 </section>
            </section>
    </div>


</asp:Content>
