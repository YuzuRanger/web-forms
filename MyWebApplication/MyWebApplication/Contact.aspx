<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MyWebApplication.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <div runat="server" id="divMessage" class="message">Welcome to Gamertopia</div>
        <h3>Your contact page.</h3>
        <address>
            One Microsoft Way<br />
            Redmond, WA 98052-6399<br />
            <abbr title="Phone">P:</abbr>
            425.555.0100
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
        <div>
            <label>Name</label>
            <asp:TextBox ID="txtName" CssClass="text-box" runat="server" />
            <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName" ErrorMessage="*" />
        </div>
        <div>
            <label>Email</label>
            <asp:TextBox ID="txtEmail" runat="server" />
        </div>
        <div>
            <label>Age</label>
            <asp:TextBox ID="txtAge" runat="server" />
        </div>
        <div>
            <label>Your favorite color:</label>
            <asp:DropDownList ID="ddlColor" runat="server">
                <asp:ListItem Text="Please choose a color." Value="" />
                <asp:ListItem Text="Blue" Value="Blue" />
                <asp:ListItem Text="Red" Value="Blue" />
                <asp:ListItem Text="Green" Value="Blue" />
                <asp:ListItem Text="Yellow" Value="Blue" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ID="rfvColor" ControlToValidate="ddlColor" ErrorMessage="Color Required" />
        </div>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Info" OnClick="btnSubmit_Click" />
        </div>
        <div class="message">
           <asp:Literal ID="ltMessage" runat="server"/>
        </div>

    </main>
</asp:Content>
