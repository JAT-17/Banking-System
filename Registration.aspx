<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Banking_System.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="FormContainer">
        <section class="FormContainerTitle">
            <h1 class="Title">First Capital Bank </h1>
        </section>
    
    <div class="container" id="LoginContainer">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>  Register </h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                               <label>User Name</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="User_Name_TextBox" placeholder="Email" ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="User_Name_TextBox" SetFocusOnError="true" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                                </div>
                                  
                                <label>TRN</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="Registration_TRN_TextBox" ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorTRN" runat="server" ErrorMessage="Invalid TRN" ControlToValidate="Registration_TRN_TextBox" SetFocusOnError="true" ForeColor="Red" ValidationExpression="\d{9}"></asp:RegularExpressionValidator>
                                </div>

                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="Registration_Password" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"  ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorRegPassword" runat="server" ErrorMessage="Required" ControlToValidate="Registration_Password" SetFocusOnError="true" ForeColor="Red" ></asp:RequiredFieldValidator>
                                </div>

                                <label>Pin</label>
                                <div class="form-group">
                                    <asp:TextBox ID="Registration_Pin" CssClass="form-control" runat="server" placeholder="PIN" TextMode="Password"  ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="Registration_Pin" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <asp:Button class="btn btn-info btn-block btn-lg"  ID="Register_Button" runat="server" Text="Register"  OnClick="Register_Button_Click"/>
                                <asp:Label ID="RegistrationResult" runat="server" CssClass="ClientFormSubmitResult"> </asp:Label>
                               
                                
                                <br />
                             
                                
                            </div>
                        </div>

                    </div>
                </div>

                <a href="Default.aspx"><<--Back Home</a><br><br>
            </div>
        </div>
    </div>
</div>
<br />
<br />
    <br />

</asp:Content>


