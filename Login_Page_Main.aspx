<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Page_Main.aspx.cs" Inherits="practise.Login_Page_Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title></title>

    <link rel="preconnect" href="https://fonts.gstatic.com" />



    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="Login_Page.css" />


</head>

<body>



    <div class="auto-style1">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <h3>Login Here</h3>

                <asp:Label class="label" runat="server">Username</asp:Label>
                <asp:TextBox ID="username" class="TextBox" runat="server" placeholder="Email or Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Fill the UserName" ControlToValidate="username" Font-Bold="True" Font-Size="13px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="A"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="pd" runat="server">Password</asp:Label>
                <asp:TextBox ID="password"  TextMode="Password" class="TextBox" runat="server" placeholder="Enter Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Fill the Password" ControlToValidate="password" Display="Dynamic" Font-Bold="True" Font-Size="13px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="A"></asp:RequiredFieldValidator>
                <br />

                <asp:Button ID="button" runat="server" Text="Log In" ValidationGroup="A" />

                <div id="btns">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Reset</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server">Forget Password</asp:LinkButton>
                </div>

            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>

</html>
