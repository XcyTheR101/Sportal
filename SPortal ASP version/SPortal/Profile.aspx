﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SPortal.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <title>Profile</title>
    <!-- liteAccordion css -->
    <link href="css/liteaccordion.css" rel="stylesheet" />

    <!-- jQuery -->
    <script src="js/jquery.min.js"> </script>

    <!-- easing -->
    <script src="js/jquery.easing.1.3.js"> </script>

    <!-- liteAccordion js -->
    <script src="js/liteaccordion.jquery.js"> </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
   <%-- <form id="frmProfile" runat="server">--%>
        <div class="centerBlock">
            <div style="background-color: transparent; background-image: url('../images/infoBackForum2.png'); padding: 5px; width: 26%;border-radius: 0.5em; border-style: solid; border-width: 1px; border-color: rgb(46, 46, 46); float: left; margin-top: 0%;">
                <asp:Label ID="lblUsername" runat="server" style="color: #59abb7;float: right;font-size: 12pt;font-weight: bold;margin-bottom: 0.5em;">@This is a very long username intended for testing purposes</asp:Label>
                <div style="background-color: transparent; height: 105px; padding: 5px; width: 95%;">
                    <div>
                        <div style="background-color: transparent; height: 64%; padding: 0%; width: 62%;">
                            <div>
                                <asp:Image ID="imgProfilePicture" runat="server" ImageUrl="images/proPic.jpg" Width="100" Height="95"/>
                                <div style="margin-top: -82%">
                                    <asp:Image ID="imgProfileFrame" ImageUrl="images/ProPic_Container.png" Width="102" Height="97" runat="server" style="border-radius: 0.5em; margin-top: 30%"/>
                                </div>
                            </div>
                        </div>
                    </div>
                                              
                </div>
                <div style="background-image: url('images/TopicBack4.png'); color: #59abb7; display: inline-block; font-size: 8pt; list-style: none; list-style-type: none; padding: 5px; text-decoration: none; width: 95%; border-radius: 0.5em; border-color: rgb(95, 95, 95); border-style: solid; border-width: 1px;">
                    <span style="color: #ededed; font-size: 12pt;"><u>Basic Info______________________________</u></span>
                    <div>
                        <br/>
                        <table style="border: none; border-width: 0">
                            <tr>
                                <td style="width: 70px;">
                                    <asp:Label ID="Label1" Text="&bull; Name:" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblProfileName" Text="John Doe" ForeColor="white" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 70px;">
                                    <asp:Label ID="Label2" Text="&bull; Birthday:" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblProfileBirthday" Text="05 December 1990" ForeColor="white" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 70px;">
                                    <asp:Label ID="Label3" Text="&bull; Gender:" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblProfileGender" Text="Male" ForeColor="white" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 70px;">
                                    <asp:Label ID="Label4" Text="&bull; Status:" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblProfileStatus" Text="Student" ForeColor="white" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 70px;">
                                    <asp:Label ID="Label5" Text="&bull; Email:" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblProfileEmail" Text="JohnD@mweb.com" ForeColor="white" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 70px;">
                                    <asp:Label ID="Label6" Text="&bull; Institution:" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblProfileInstitution" Text="Belgium Campus" ForeColor="white" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table> <%--Left Status Pane --%>
                    </div>
                    <div>
                        <br/>
                        <table style="border-color: transparent; border-width: 0; margin-left: 38px;">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="img-demo/NewButtonsEdit.png" Width="116" Height="33" AlternateText="Button"/>
                                </td>
                            </tr>
                        </table>
                        <span style="color: #ededed">_____________________________________________________</span>
                    </div>
                </div>
                <div style="background-color: transparent; padding: 5px; width: 95%;">
                
                    <%--<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#"><img src="img-demo/button.png" width="146" height="22" alt="button"/></a>
                <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#"><img src="img-demo/button.png" width="146" height="22" alt="button"/></a>
                <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#"><img src="img-demo/button.png" width="146" height="22" alt="button"/></a>--%>
                
                    <%--<table style="border-color: transparent; border-width: 0; margin-left: 20px;">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img-demo/button.png" Width="146" Height="22" AlternateText="Button"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="img-demo/button.png" Width="146" Height="22" AlternateText="Button"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="img-demo/button.png" Width="146" Height="22" AlternateText="Button"/>
                            </td>
                        </tr>
                    </table>--%>
                </div>
            </div>
                                    
            <asp:Panel ID="pnlTimelineBody" style="background-image: url('../images/infoBackForum2.png'); padding: 13px; width: 65%; float: left; margin-left: 1em; border-radius: 0.5em" runat="server">
                <div style="background-image: url('images/pro_lineGraphic.png'); height: 44px; margin-left: -2%; margin-top: -2%; width: 104%;border-radius: 0.5em"></div>
                <asp:Panel runat="server" ID="pnlTimelineContainer" style="background-image: url('images/TopicBack4.png'); width: 100%; margin-top: 1em; padding-bottom: 1em;background-image: url('images/TopicBack4.png'); width: 100%; margin-top: 1em; padding-bottom: 1em; border-radius: 0.5em; border-color: rgb(95, 95, 95); border-style: solid; border-width: 1px;float: left">
                    <br/>
                    <asp:TextBox style="float: right; margin-right: 20px;border-radius: 0.5em;" type="text" ID="txtSearchTimeline" value=""  runat="server" Width="400px"/>
                    <asp:Label style="color: white; float: right; margin-right: 10px;" ID="Label7" runat="server" >&nbsp;&star;&nbsp;SEARCH TIMELINE</asp:Label>&nbsp;
                    <br/><br/><hr/><br/>

                    <%--<div style="margin-bottom: 15px;">
                        <div style=" color: white ;margin-left: 14.5% ;background-color: transparent; height: auto; width: 80%">
                            <table>
                                <tr>
                                    <td style="width: 400px; background-color: red;">
                                        <asp:Label ID="Label13" style="float: left" runat="server">POST #1</asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label14" style="float: right" runat="server">2 hours</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" style="float: left" runat="server"><br/>Topic: Test</asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div style="border-color: black; border-width: 20px; border: solid; padding: -1px; color: black ;margin-left: 14.5% ;background-color: whitesmoke; height: 100px; width: 80%">
                            <asp:TextBox ID="TextBox1" runat="server" Height="88px" Width="506px"></asp:TextBox>
                                                          
                        </div>   

                        <div style=" padding: 3px; color: black ;margin-left: 14.5% ;background-image: url('images/sign_Back.png'); height: 23px; width: 80%">
                                <a href="#"><img src="img-demo/button.png" width="168" height="22" alt="button"/></a>
                                <a href="#"><img src="img-demo/button.png" width="168" height="22" alt="button"/></a>
                                <a href="#"><img src="img-demo/button.png" width="168" height="22" alt="button"/></a>
                        </div>

                    </div>--%>
       
                </asp:Panel>
            </asp:Panel>
        </div>
<%--    </form>--%>
</asp:Content>