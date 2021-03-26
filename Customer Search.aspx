<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer Search.aspx.cs" Inherits="Banking_System.Customer_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />

    <div class="containerSearchbyTRN">
        <div class="row">
            <div class="col-lg-6">
                <div class="FormContainer_SearchForClient">
                    <section class="FormContainerTitle">
                        <h2 class="Title">Customer Search</h2>
                    </section>
                    <br />
                    <br />
                    <br />
                    <section class="CustomerSearch_Datainput">
                        <asp:Label ID="CustomerSearch_Label" runat="server" Text=" Customer TRN:" CssClass="FormLabel" Width="154px"></asp:Label>
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
                            <asp:Button ID="AccountInfo" runat="server" Text="Account Info" OnClick="GetAccountInfo_Click" />
                            <br />
                            <asp:Label ID="SearchResult" runat="server" CssClass="ClientFormSubmitResult"></asp:Label>
                        </section>
                    </section>
                </div>

                <%--The is the loan title --%>
                <div class="FormContainerResults">
                    <section class="FormContainerTitle">
                        <h2 class="Title">Loans</h2>
                    </section>
                    <asp:GridView ID="Loans_GridView" runat="server"></asp:GridView>


                    <%--The is the Saving Account title --%>
                    <div class="FormContainerResults">
                        <section class="FormContainerTitle">
                            <h2 class="Title">Saving Account</h2>
                        </section>
                        <asp:GridView ID="Saving_Account_GridView" runat="server"></asp:GridView>


                        <%--The is the Chequing Account title --%>
                        <div class="FormContainerResults">
                            <section class="FormContainerTitle">
                                <h2 class="Title">Chequing Account</h2>
                            </section>
                            <asp:GridView ID="Chequing_AccountGridView" runat="server"></asp:GridView>

                        </div>
                    </div>
                </div>
            </div>
            <div class="Container">
                <div class="row">
                    <div class="col-lg-6" id="CustomerInfo">

                        <section class="FormContainerTitle">
                            <h2 class="Title">Customer Information</h2>
                        </section>

                        <asp:Label ID="Brach_ID_Label_Search" runat="server" Text="Branch ID:" CssClass="FormLabel"></asp:Label>
                        <asp:TextBox ID="Brach_ID_TextBox_Search" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="FirstName_Label_Search" runat="server" Text="First Name:" CssClass="FormLabel"></asp:Label>
                        <asp:TextBox ID="FirstName_TextBox_Search" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="LastName_Label_Search" runat="server" Text="Last Name:" CssClass="FormLabel"></asp:Label>
                        <asp:TextBox ID="LastName_TextBox_Search" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="DOB_Label_Search" runat="server" Text="DOB:" CssClass="FormLabel"></asp:Label>
                        <asp:TextBox ID="DOB_TextBox_Search" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Address_Label_Search" runat="server" Text="Address:" CssClass="FormLabel"></asp:Label>
                        <asp:TextBox ID="Address_TextBox_Search" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Contact_Number_Label_Search" runat="server" Text="Contact Number:" CssClass="FormLabel"></asp:Label>
                        <asp:TextBox ID="Contact_Number_TextBox_Search" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Email_Label_Search" runat="server" Text="Email:" CssClass="FormLabel"></asp:Label>
                        <asp:TextBox ID="Email_TextBox_Search" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="IDType_Label_Search" runat="server" Text="ID :" CssClass="FormLabel"></asp:Label>
                        <asp:TextBox ID="ID_Type_TextBox_Search" runat="server"></asp:TextBox>
                        &nbsp
                        <asp:TextBox ID="ID_Type_Number_TextBox_Search" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Referee_Label_Search" runat="server" Text="Referee:" CssClass="FormLabel"></asp:Label>
                        <asp:TextBox ID="Referee_TextBox_Search" runat="server"></asp:TextBox>
                        <br />
                        <br />
                    </div>
                </div>
            </div>
        </div>
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
</asp:Content>
