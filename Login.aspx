<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Banking_System.Login" %>
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
                                    <h3>  Login </h3>
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
                               <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="Txtemail" placeholder="Email" ></asp:TextBox>
                                </div>

                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TxtPassword" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"  ></asp:TextBox>
                                </div>

                                 <input class="btn btn-info btn-block btn-lg" id="Login" type="button" value="Login" />
                                
                                <br />
                                 <div class="form-group">
                                     <a href="RegisterUser.aspx"><input class="btn btn-info btn-block btn-lg" id="Register" type="button" value="Register" /></a>
                                </div>
                                
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
    <br />
    <br />
    <br />
</asp:Content>


