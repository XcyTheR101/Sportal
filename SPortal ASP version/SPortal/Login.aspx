﻿<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SPortal.WebForm8" %>

<head>
    <title>Login</title>
    
    <script type="text/javascript">
        function tryPlaceholder(txtbox, placehold) {
            if (txtbox.value.length == 0) {
                txtbox.value = placehold.toString();
                txtbox.style.color = "#959595";
            }
            else {
                if (txtbox.value == placehold.toString()) {
                    txtbox.value = '';
                    txtbox.style.color = "#000000";
                }
            }
        }
    </script>
    
    <script>
        function Message() {
            alert("Username/Password does not match");
            return false;
        }
    </script>

</head>
<body>
    <form id="frmLogin" runat="server">
        <div style="background-image: url('images/sign_Back.png'); bottom: 0px; color: #ffffff; height: 100%; position: fixed; right: 0px; top: 0px; width: 100%;">
            <div style="height: 600px; padding-bottom: 10%; padding-left: 30%; padding-right: 50%; padding-top: 5%; width: 680px">
                <div style="background-image: url('img-demo/SignIn_Block.png'); width: auto">
                    <br/><br/><br/>
                    <table style="margin-left: 18%;">
                        <tr>
                            <td style="width: 125px;">
                                <label style="font-size: 17pt; color: white;">Username</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUsername" runat="server" Value=""  style="background-color: #c0c0c0; border: double #ccccff; margin-top: 15px; border-radius: 0.5em" size="50" autocomplete="on" autofocus="" onclick="tryPlaceholder(this,'Enter your Username')" onblur="tryPlaceholder(this,'Enter your Username')" ></asp:TextBox><br/><br/>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 125px;">
                                <label style="font-size: 17pt; color: white;">Password</label>
                            </td>
                            <td>
                                <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" value="" style="background-color: #c0c0c0; border: double #ccccff; margin-top: 10px;border-radius: 0.5em" size="50" autocomplete="on" ></asp:TextBox><br/><br/>
                            </td>
                        </tr>
                    </table>
                    
                    <table style="margin-left: 37%;">
                        <tr>
                            <td>
                                <div style="height: 30px;">
                                    <label style="color: white;">Forgotten your password? Click </label><a href="#" style="color:#ffffff">here</a><br/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="height: 30px">
                                    <asp:CheckBox ID="chkRemember" type="checkbox" name="Remember_Me" value="ON" checked="true"  runat="server"/><label style="color: white;">Remember Me</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="height:60px">
                                    <label style="color: #888">Need an account? </label><a style="color: #ffffff" href="Register.aspx">Register now!</a>
                                </div>
                            </td>
                        </tr>
                    </table>
                 
                    <table style="margin-left:36%;">
                        <tr>
                            <td style="width: 150px;">
                                <asp:ImageButton ID="btnOK" runat="server" ImageUrl="img-demo/NewButtonsOK.png" OnClick="btnOK_Click"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="img-demo/NewButtonsCancel.png" OnClick="btnCancel_Click"/>
                            </td>
                        </tr>
                    </table>
                    <br/><br/>
                </div>
                                   
            </div>
        </div>
    </form>
</body>