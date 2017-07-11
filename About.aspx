<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Mridini_Blog.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Click here to invoke the blogger services<%: Title %>.</h2>
    <p>
        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#FF99FF" BorderColor="#99FF99" BorderStyle="Double" Height="21px" NavigateUrl="http://localhost:60861/BloggerServices.asmx" Width="474px">Invoke Blogger Services</asp:HyperLink>
    </p>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="Sample">
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                EmailConfirmed:
                <asp:Label ID="EmailConfirmedLabel" runat="server" Text='<%# Eval("EmailConfirmed") %>' />
                <br />
                PasswordHash:
                <asp:Label ID="PasswordHashLabel" runat="server" Text='<%# Eval("PasswordHash") %>' />
                <br />
                SecurityStamp:
                <asp:Label ID="SecurityStampLabel" runat="server" Text='<%# Eval("SecurityStamp") %>' />
                <br />
                PhoneNumber:
                <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                <br />
                PhoneNumberConfirmed:
                <asp:Label ID="PhoneNumberConfirmedLabel" runat="server" Text='<%# Eval("PhoneNumberConfirmed") %>' />
                <br />
                TwoFactorEnabled:
                <asp:Label ID="TwoFactorEnabledLabel" runat="server" Text='<%# Eval("TwoFactorEnabled") %>' />
                <br />
                LockoutEndDateUtc:
                <asp:Label ID="LockoutEndDateUtcLabel" runat="server" Text='<%# Eval("LockoutEndDateUtc") %>' />
                <br />
                LockoutEnabled:
                <asp:Label ID="LockoutEnabledLabel" runat="server" Text='<%# Eval("LockoutEnabled") %>' />
                <br />
                AccessFailedCount:
                <asp:Label ID="AccessFailedCountLabel" runat="server" Text='<%# Eval("AccessFailedCount") %>' />
                <br />
                UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sample" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AspNetUsers]"></asp:SqlDataSource>
    </p>
</asp:Content>
