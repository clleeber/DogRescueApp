<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Test.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h4>Please use the number below if you have any question or suggestion</h4>
    <address>
        The Dog Rescue<br />
        London<br />
        <abbr title="Phone">P:</abbr>
        000 0000 0000
    </address>

    <address>
        <strong>Support:</strong>   <a href="##">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="##">Marketing@example.com</a>
    </address>
</asp:Content>
