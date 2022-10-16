<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Available Dogs.aspx.cs" Inherits="Test.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="column left">
            <br />
            <p>
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's 
        standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make
        a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
        remaining essentially unchanged.
            </p>
            <br />
        </div>
        <div class="column right">
            <h2>Dogs Available:</h2>
          
            <asp:SqlDataSource ID="Repeater" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT &quot;PET_NAME&quot;, &quot;AGE&quot;, &quot;SEX&quot;, &quot;PET_SIZE&quot;, &quot;IMAGE&quot; FROM &quot;ANIMAL&quot;"></asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="Repeater" GroupItemCount="3">
                <AlternatingItemTemplate>
                     <tr class="TableData" />
                    <td><asp:Image ID="Image2" runat="server"  ImageUrl='<%# Eval("IMAGE") %>' class="preview" Height="140" Width="140" />
                        <br /></td>
                    <td runat="server" style="">Name:
                        <asp:Label ID="PET_NAMELabel" runat="server" Text='<%# Eval("PET_NAME") %>' />
                        <br />Age:
                        <asp:Label ID="AGELabel" runat="server" Text='<%# Eval("AGE") %>' />
                        <br />Sex:
                        <asp:Label ID="SEXLabel" runat="server" Text='<%# Eval("SEX") %>' />
                        <br />Size:
                        <asp:Label ID="PET_SIZELabel" runat="server" Text='<%# Eval("PET_SIZE") %>' />
                        <br /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="">PET_NAME:
                        <asp:TextBox ID="PET_NAMETextBox" runat="server" Text='<%# Bind("PET_NAME") %>' />
                        <br />AGE:
                        <asp:TextBox ID="AGETextBox" runat="server" Text='<%# Bind("AGE") %>' />
                        <br />SEX:
                        <asp:TextBox ID="SEXTextBox" runat="server" Text='<%# Bind("SEX") %>' />
                        <br />PET_SIZE:
                        <asp:TextBox ID="PET_SIZETextBox" runat="server" Text='<%# Bind("PET_SIZE") %>' />
                        <br />IMAGE:
                        <asp:TextBox ID="IMAGETextBox" runat="server" Text='<%# Bind("IMAGE") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br /></td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
<td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">PET_NAME:
                        <asp:TextBox ID="PET_NAMETextBox" runat="server" Text='<%# Bind("PET_NAME") %>' />
                        <br />AGE:
                        <asp:TextBox ID="AGETextBox" runat="server" Text='<%# Bind("AGE") %>' />
                        <br />SEX:
                        <asp:TextBox ID="SEXTextBox" runat="server" Text='<%# Bind("SEX") %>' />
                        <br />PET_SIZE:
                        <asp:TextBox ID="PET_SIZETextBox" runat="server" Text='<%# Bind("PET_SIZE") %>' />
                        <br />IMAGE:
                        <asp:TextBox ID="IMAGETextBox" runat="server" Text='<%# Bind("IMAGE") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr class="TableData" />
                    <td><asp:Image ID="Image2" runat="server"  ImageUrl='<%# Eval("IMAGE") %>' class="preview" Height="140" Width="140" />
                        <br /></td>
                    <td runat="server" style="">Name:
                        <asp:Label ID="PET_NAMELabel" runat="server" Text='<%# Eval("PET_NAME") %>' />
                        <br />Age:
                        <asp:Label ID="AGELabel" runat="server" Text='<%# Eval("AGE") %>' />
                        <br />Sex:
                        <asp:Label ID="SEXLabel" runat="server" Text='<%# Eval("SEX") %>' />
                        <br />Size:
                        <asp:Label ID="PET_SIZELabel" runat="server" Text='<%# Eval("PET_SIZE") %>' />
                        <br /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="">Name:
                        <asp:Label ID="PET_NAMELabel" runat="server" Text='<%# Eval("PET_NAME") %>' />
                        <br />Age:
                        <asp:Label ID="AGELabel" runat="server" Text='<%# Eval("AGE") %>' />
                        <br />Sex:
                        <asp:Label ID="SEXLabel" runat="server" Text='<%# Eval("SEX") %>' />
                        <br />Pet Size:
                        <asp:Label ID="PET_SIZELabel" runat="server" Text='<%# Eval("PET_SIZE") %>' />
                        <br />IMAGE:
                        <asp:Label ID="IMAGELabel" runat="server" Text='<%# Eval("IMAGE") %>' />
                        <br /></td>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
    </div>
      <asp:Repeater ID="Repeater1" runat="server" DataSourceID="Repeater"></asp:Repeater>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server">
            </asp:EntityDataSource>
</asp:Content>
