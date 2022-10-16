<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="Test.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <img src="Image/3.jpg" style="width: 100%; height: 700px; object-fit: cover" />
    <div class="topic">
        <p>Donate</p>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SecondContent" runat="server">
    <div class="content">
        <p class="brief">Lorem ipsum dolor sit amet, eam nominavi disputando et. Omittam complectitur nec id, altera audiam duo ex. Cu reque platonem consulatu ius, habeo luptatum recteque an nec. Ne corpora percipitur duo. Error democritum vituperata mea te. Veniam qualisque dissentiet cu mei, ex sit vide labores. Ius an modus iusto, eam malis dictas ad, ut iuvaret scaevola adipisci per.</p>
        <div id="donate">
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ThirdContent" runat="server">
    <div class="donatebutton">
        <form action="https://www.paypal.com/donate" method="post" target="_top">
            <input type="hidden" name="hosted_button_id" value="K2T7WCLP434AQ" />
            <input type="image" src="https://www.paypalobjects.com/en_US/GB/i/btn/btn_donateCC_LG.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
            <img alt="" border="0" src="https://www.paypal.com/en_GB/i/scr/pixel.gif" width="1" height="1" />
        </form>
    </div>
</asp:Content>

