<%@ Page Title="MyPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyPage.aspx.cs" Inherits="MyWebApplication.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your application description page.</h3>
        <p>Use this area to provide additional information.</p>
        
        <div class="form-group">
            <label>Event Name:</label>
            <asp:TextBox ID="txtEvent" CssClass="form-control" runat="server" />
        </div>
        <div class="form-group">
            <label>Event Date:</label>
            <asp:Calendar ID="calendarEvents" runat="server" />
        </div>
        <div class="form-group">
            <asp:Button ID="btnEvent" runat="server" CssClass="btn btn-primary btn-large" Text="Add Event" OnClick="btnEvent_Click" />
        </div>
        <h3>Events repeater</h3>
        <div>
            <asp:Repeater ID="rptEvents" runat="server">
                <ItemTemplate>
                    <h3><%# DataBinder.Eval(Container.DataItem, "EventDate") %><small><%# DataBinder.Eval(Container.DataItem, "EventName") %></small></h3>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </main>
</asp:Content>
