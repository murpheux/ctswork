<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Test3.Welcome" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>:::Welcome</title>
    <link rel="stylesheet" href="Content/site.css" />
</head>
<body>
    <div class="topcorner">
        <form id="form1" runat="server">
            <asp:LoginStatus ID="LoginStatus1" runat="server" OnLoggingOut="LoginStatus1_LoggingOut" />
        </form>
    </div>
    <div class="mideighty">
        <%
            var user = (User) Session["LoginUser"];

            %>
        <h1>Welcome, <%= $"{user.FirstName} {user.LastName}" %>!</h1>
        <div>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mauris leo, euismod sit amet gravida et, euismod sit amet risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean sed tortor facilisis, aliquam tellus et, viverra nisi. Nulla consectetur nisi vitae feugiat pretium. Duis sollicitudin sem faucibus finibus consectetur. Curabitur id sapien et erat vulputate pulvinar. Aliquam ullamcorper neque non bibendum fermentum. Integer venenatis sem in pellentesque pellentesque. Aenean vel ullamcorper ex.</p>

            <p>Curabitur egestas dolor diam. Curabitur dignissim enim et quam pharetra, in rutrum enim interdum. Curabitur id velit nulla. Nullam id nibh eu libero efficitur imperdiet. Ut ornare fringilla eleifend. Donec dapibus, justo semper lobortis ultrices, urna lacus porta dolor, eu venenatis nulla ante quis enim. Donec fermentum ac justo vitae tempor. Aliquam erat volutpat. Curabitur eu rutrum ante, sit amet egestas sem. Etiam pretium ut risus sagittis semper. Aliquam sem eros, aliquam vel maximus at, hendrerit nec neque.</p>

            <p>Fusce mollis at nibh ut facilisis. Suspendisse egestas lacinia lorem, ac luctus dui finibus ac. Donec porttitor augue non enim congue pretium eget condimentum risus. Vivamus in mi vehicula, pellentesque ex a, finibus magna. Nulla luctus ullamcorper ligula eu luctus. Nullam interdum sollicitudin urna. Aliquam elementum efficitur quam. Nullam sollicitudin sem vel nisl auctor hendrerit.</p>

            <p>Nulla consectetur consectetur elementum. Vivamus ut efficitur tortor, non luctus augue. Maecenas feugiat auctor elit, id aliquet magna sagittis ac. Ut eget nibh ac mauris sodales porta at vitae enim. Ut justo ipsum, varius id nisi et, dignissim elementum nulla. Vivamus scelerisque auctor ipsum nec tempus. Donec porttitor non nunc tristique blandit. Aliquam lacus urna, placerat at auctor quis, aliquet efficitur turpis. Duis sagittis molestie suscipit. Duis ut lacinia felis. Pellentesque id mattis massa, sed semper neque. Nam tempor ligula vitae auctor luctus.</p>

            <p>Vestibulum eleifend tortor dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc volutpat ipsum in ex molestie hendrerit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam nec enim dolor. Vivamus eget hendrerit ipsum. Pellentesque facilisis nisl ex, non pellentesque justo egestas ut. Sed nec tempus velit. Phasellus mattis purus id venenatis volutpat. Vivamus at mauris pellentesque, congue nibh non, fringilla tortor. Pellentesque gravida eleifend sem eget rutrum. Sed laoreet placerat elit sit amet facilisis. Aliquam luctus tortor vel enim porttitor convallis. Curabitur non tempor velit. Proin porta odio vel sapien efficitur, nec ornare enim porttitor.</p>
        </div>
    </div>
</body>
</html>
