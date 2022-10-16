<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="How to Adopt.aspx.cs" Inherits="Test.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <img src="Image/8.jpg" class="master2">
    <div class="topic">
        <p>How to adopt</p>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SecondContent" runat="server">
    <div class="howtoadopt">
        <div class="column6">
            <p>
                <b>Step 1.</b> Read the criteria and research Romanian dogs.
Make sure this is the right choice for you. Ensure you have the time, funds and patience.
            </p>
        </div>
        <div class="column6">
            <p>
               <b> Step 2.</b> Register and complete the adoption application form.Please note if you apply, and do not meet our criteria we can no longer respond to your application.
            </p>
        </div>
        <div class="column6">
            <p>
                <b>Step 3.</b> We then will look at suitable dogs for your set up based on your application.
            </p>
        </div>
               <div class="column6">
            <p>
                <b>Step 4.</b> After a satisfactory home check, we will book the place on the third party transport. Usually this will be around a month, as the dog or puppy will need to go through its vaccination and Passport programme.

            </p>
        </div>
        <div class="column6">
            <p>
                <b>Step 5.</b> Your dog arrives in the UK.
We keep in touch with you during these weeks and, at least a week prior to arrival in the UK, we make arrangements for pick ups. If you have transport issues within the UK, we can usually assist with these via our transport network (you will have to contribute petrol costs). Please note we do not offer transport to London.
            </p>
        </div>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" CssClass="button-13" Text="Available Dogs" CommandName="Update" usesubmitbehavior="true" OnClick="Button1_Click" />
        </div>
    </asp:Content>
