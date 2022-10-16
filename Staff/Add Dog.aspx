<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add Dog.aspx.cs" Inherits="Test.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form">
       <div class="addDog">
    <fieldset class="insert"> 
        <legend>Add new dog:</legend>
    <%--<br />--%>
    <asp:Label ID="Label1" runat="server" Text="Label">Status:</asp:Label>
    <asp:DropDownList ID="status" runat="server" CssClass="form-control" Width="280px">
        <asp:ListItem Value="1">Available</asp:ListItem>
        <asp:ListItem Value="2">Unavailable</asp:ListItem>
    </asp:DropDownList><br>

    <asp:Label ID="Label10" runat="server" Text="Label">Name:</asp:Label>
    <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="name" ErrorMessage="Field Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br>

    <asp:Label ID="Label11" runat="server" Text="Label">Address:</asp:Label>
    <asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="address" ErrorMessage="Field Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br>

    <asp:Label ID="Label12" runat="server" Text="Label">Postcode:</asp:Label>
    <asp:TextBox ID="postcode" runat="server" CssClass="form-control"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="postcode" ErrorMessage="Field Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br>

    <asp:Label ID="Label14" runat="server" Text="Label">Foster Phone Number:</asp:Label>
    <asp:TextBox ID="phone" runat="server" CssClass="form-control"></asp:TextBox><br>

    <asp:Label ID="Label4" runat="server" Text="Label">Pet Age:</asp:Label>
    <asp:DropDownList ID="age" runat="server" CssClass="form-control" Width="280px">
        <asp:ListItem Value="Puppy"></asp:ListItem>
        <asp:ListItem Value="Young adult"></asp:ListItem>
        <asp:ListItem Value="Adult "></asp:ListItem>
        <asp:ListItem Value="Senior"></asp:ListItem>
    </asp:DropDownList><br>

    <asp:Label ID="Label5" runat="server" Text="Label">Pet Sex:</asp:Label>
    <asp:DropDownList ID="sex" runat="server" CssClass="form-control" Width="280px">
        <asp:ListItem Value="Male"></asp:ListItem>
        <asp:ListItem Value="Female"></asp:ListItem>
    </asp:DropDownList><br>

    <asp:Label ID="Label6" runat="server" Text="Label">Pet Size:</asp:Label>
    <asp:DropDownList ID="pet_size" runat="server" CssClass="form-control" Width="280px">
        <asp:ListItem Value="Small"></asp:ListItem>
        <asp:ListItem Value="Medium"></asp:ListItem>
        <asp:ListItem Value="Large"></asp:ListItem>
    </asp:DropDownList><br>

    <asp:Label ID="Label8" runat="server" Text="Label">Home requirement:</asp:Label>
    <asp:DropDownList ID="homeType" runat="server" CssClass="form-control" Width="280px">
        <asp:ListItem Value="House"></asp:ListItem>
        <asp:ListItem Value="Flat"></asp:ListItem>
    </asp:DropDownList><br>

    <asp:Label ID="Label3" runat="server" Text="Label">Is child safe?</asp:Label>
    <div class="custom-control custom-radio custom-control-inline">
        <asp:RadioButtonList ID="childSafe" runat="server">
            <asp:ListItem class="custom-control-input" Value="Yes"></asp:ListItem>
            <asp:ListItem class="custom-control-input" Value="No"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="childSafe" ErrorMessage="Field Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </div>

    <asp:Label ID="Label18" runat="server" Text="Label">Garden Requirement:</asp:Label>
    <asp:DropDownList ID="garden" runat="server" CssClass="form-control" Width="280px">
        <asp:ListItem Value="Small (less than 15sqm)"></asp:ListItem>
        <asp:ListItem Value="Medium (between 15 and 60sqm)"></asp:ListItem>
        <asp:ListItem Value="Large (larger than 60sqm)"></asp:ListItem>
    </asp:DropDownList><br>

    <asp:Label ID="Label22" runat="server" Text="Label">Is pet safe?</asp:Label>
    <asp:DropDownList ID="otherPets" runat="server" CssClass="form-control" Width="280px">
        <asp:ListItem Value="Not tested"></asp:ListItem>
        <asp:ListItem Value="Dog"></asp:ListItem>
        <asp:ListItem Value="Cat"></asp:ListItem>
        <asp:ListItem Value="Both"></asp:ListItem>
    </asp:DropDownList><br>

    <asp:Label ID="Label7" runat="server" Text="Label">Dog behaviour requirements:</asp:Label>
    <asp:DropDownList ID="behaviour" runat="server" CssClass="form-control" Width="280px">
        <asp:ListItem Value="Experienced"></asp:ListItem>
        <asp:ListItem Value="Any"></asp:ListItem>
    </asp:DropDownList><br>

    <asp:Label ID="Label21" runat="server" Text="Label">Is house trained?</asp:Label>
    <div class="custom-control custom-radio custom-control-inline">
        <asp:RadioButtonList ID="training" runat="server">
            <asp:ListItem class="custom-control-input" Value="Yes"></asp:ListItem>
            <asp:ListItem class="custom-control-input" Value="No"></asp:ListItem>
        </asp:RadioButtonList>
    </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="training" ErrorMessage="Field Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />

    <asp:Label ID="Label23" runat="server" Text="Label">Description:</asp:Label><br />
    <asp:TextBox ID="description" TextMode="MultiLine" Rows="7" runat="server" Height="120px" Width="530px"></asp:TextBox>
    <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="description" ErrorMessage="Field Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <br />
   IMAGE:<asp:TextBox ID="Picture" runat="server"></asp:TextBox>
&nbsp;<asp:FileUpload ID="FileUploadControl" runat="server" />
        <asp:Button ID="Upload" runat="server" OnClick="Upload_Click" Text="Upload" />
      <br />
        <asp:Label ID="StatusLabel" runat="server"></asp:Label>
      <br />

    <asp:Button ID="Button1" runat="server" CssClass="button-12" Text="Submit" CommandName="Update" usesubmitbehavior="true" OnClick="Button1_Click" />
        <asp:Label ID="confirmationLabel" runat="server" ForeColor="#FF3300"></asp:Label>
    <br />

    <asp:SqlDataSource 
        ID="SqlDataSource1" 
        runat="server"
        ConnectionString="<%$ ConnectionStrings:newId %>" 
        ProviderName="<%$ ConnectionStrings:newId.ProviderName %>"
        SelectCommand="SELECT &quot;id&quot;, &quot;name&quot;, &quot;status&quot;, &quot;address&quot;, &quot;postcode&quot;, &quot;foster_phone_number&quot;, &quot;age&quot;, &quot;sex&quot;, &quot;size&quot;, &quot;house_requirement&quot;, &quot;is_pet_safe&quot;, &quot;is_child_Safe&quot;, &quot;garden_size&quot;, &quot;is_house_trained&quot;, &quot;image&quot;, &quot;behaviour&quot;, &quot;description&quot;, &quot;created&quot; FROM &quot;ANIMALS&quot;"
        InsertCommand="INSERT INTO &quot;C##6P05&quot;.ANIMAL (&quot;STATUS&quot;, &quot;PET_NAME&quot;, &quot;ADDRESS&quot;, &quot;POSTCODE&quot;, &quot;FOSTER_PHONE_NUMBER&quot;, &quot;AGE&quot;, &quot;SEX&quot;,&quot;HOUSE_REQUIREMENT&quot;,&quot;IS_CHILD_SAFE&quot;,&quot;GARDEN_SIZE&quot;, &quot;IS_PET_SAFE&quot;,&quot;BEHAVIOUR&quot;, &quot;IS_HOUSE_TRAINED&quot;, &quot;PET_DESCRIPTION&quot;,&quot;PET_SIZE&quot;) VALUES (:status,:pet_name,:address,:postcode,:foster_phone_number,:age,:sex,:house_requirement,:is_child_Safe,:garden_size,:is_pet_safe,:behaviour,:is_house_trained,:pet_description,:pet_size)">
        <InsertParameters>
            <asp:ControlParameter ControlID="status" Name="status" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="name" Name="name" PropertyName="Text" />
            <asp:ControlParameter ControlID="address" Name="address" PropertyName="Text" />
            <asp:ControlParameter ControlID="postcode" Name="postcode" PropertyName="Text" />
            <asp:ControlParameter ControlID="phone" Name="foster_phone_number" PropertyName="Text" />
            <asp:ControlParameter ControlID="age" Name="age" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="sex" Name="sex" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="homeType" DefaultValue="small" Name="house_requirement" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="childSafe" Name="is_child_Safe" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="garden" Name="garden_size" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="otherPets" Name="is_pet_safe" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="behaviour" Name="behaviour" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="training" Name="is_house_trained" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="description" Name="description" PropertyName="Text" />
            <asp:ControlParameter ControlID="pet_size" Name="pet_size" PropertyName="SelectedValue" />
        </InsertParameters>
    </asp:SqlDataSource>
        </fieldset>
           </div>
       </div>

</asp:Content>
