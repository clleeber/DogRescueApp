<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Managment.aspx.cs" Inherits="Test.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <div class="management">
        <fieldset class="insert">
            <legend>Manage Animals</legend>
            <div class="center">
                <div class="buttonleft">
                    <asp:Button ID="addDog" runat="server" CssClass="button-12" Text="Add dog" CommandName="Update" UseSubmitBehavior="true" OnClick="Button2_Click" />
                </div>
                <div class="buttonright">
                    <asp:Button ID="Button4" runat="server" CssClass="button-12" Text="Edit entries / Find best matches" CommandName="Update" UseSubmitBehavior="true" OnClick="Button3_Click" />
                </div>
            </div>
        </fieldset>
        </br>
            </br>
            <fieldset class="insert">
                <legend>Manage Applications</legend>
                <div class="center">
                    <asp:Button ID="Button5" runat="server" CssClass="button-12" Text="Display current adopters" CommandName="Update" UseSubmitBehavior="true" OnClick="Button4_Click" />
                </div>
            </fieldset>
        </br>
            </br>
            <fieldset class="insert">
                <legend>Journal</legend>
                <div class="center">
                    <asp:Button ID="Button7" runat="server" CssClass="button-12" Text="Add post to Journal" CommandName="Update" UseSubmitBehavior="true" OnClick="Button6_Click" />
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
