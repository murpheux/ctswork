<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Test3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>:::Login</title>
    <link rel="stylesheet" href="Content/site.css" />
</head>
<body>

    <form id="form1" runat="server">

        <div class="abg acenter">
            <h1>Login:</h1>
            <asp:Login ID="Login1" UserNameLabelText="First Name:" PasswordLabelText="Last Name:" DisplayRememberMe="False" ShowPassword="true" runat="server" LoginButtonText="Login" PasswordRequiredErrorMessage="Last Name is required." TitleText="" UserNameRequiredErrorMessage="First Name is required." OnAuthenticate="Login1_Authenticate" FailureText="Login failed, please try again.">
            </asp:Login>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" />
        </div>
    </form>

    <script>
        document.getElementById('Login1_Password').type = 'text';
    </script>
</body>
</html>
