<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit Applicants.aspx.cs" Inherits="Test.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="forms">
        <div class="scrolltable">
            <h3>Filter the applicant by status:</h3>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Dropdown" DataTextField="STATUS" DataValueField="STATUS" AutoPostBack="True">
            </asp:DropDownList>

            <asp:SqlDataSource ID="Dropdown" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;STATUS&quot; FROM &quot;APPLICANT&quot;"></asp:SqlDataSource>
            <br />
            <div class="scrolltable">

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT &quot;APPLICANT_ID&quot;, &quot;STATUS&quot;, &quot;APPLICANT_NAME&quot;, &quot;ADDRESS&quot;, &quot;POSTCODE&quot;, &quot;CITY&quot;, &quot;PHONE_NUMBER&quot;, &quot;ADDITIONAL_PHONE_NUMBER&quot;, &quot;EMAIL&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;PET_SEX&quot;, &quot;PET_AGE&quot;, &quot;PET_SIZE&quot;, &quot;HEALTH_ISSUES&quot;, &quot;HOUSE_TYPE&quot;, &quot;HOUSE_OWNERSHIP&quot;, &quot;HOUSE_OCUPPANCY&quot;, &quot;HOUSE_CHILDREN&quot;, &quot;HAS_GARDEN&quot;, &quot;IS_GARDEN_FENCED&quot;, &quot;CHILD_PLAN&quot;, &quot;HAS_CHILDREN_VISITING&quot;, &quot;HAS_OTHER_PETS&quot;, &quot;HAS_EXPERIENCE&quot;, &quot;MAX_HOURS_ALONE&quot;, &quot;PET_PLACE_ALONE&quot;, &quot;HAS_GARDEN_ACCESS&quot;, &quot;PET_PLACE_HOLIDAYS&quot;, &quot;WALK_SCHEDULE&quot;, &quot;WEATHER_WALK_SCHEDULE&quot;, &quot;DEMANDS_HOUSE_TRAINED&quot;, &quot;EMPLOYMENT_STATUS&quot;, &quot;HAS_HOLIDAY_PLANS&quot; FROM &quot;APPLICANT&quot; WHERE  &quot;STATUS&quot; =:STATUS" DeleteCommand="DELETE FROM &quot;APPLICANT&quot; WHERE &quot;APPLICANT_ID&quot; = ?" InsertCommand="INSERT INTO &quot;APPLICANT&quot; (&quot;APPLICANT_ID&quot;, &quot;STATUS&quot;, &quot;APPLICANT_NAME&quot;, &quot;ADDRESS&quot;, &quot;POSTCODE&quot;, &quot;CITY&quot;, &quot;PHONE_NUMBER&quot;, &quot;ADDITIONAL_PHONE_NUMBER&quot;, &quot;EMAIL&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;PET_SEX&quot;, &quot;PET_AGE&quot;, &quot;PET_SIZE&quot;, &quot;HEALTH_ISSUES&quot;, &quot;HOUSE_TYPE&quot;, &quot;HOUSE_OWNERSHIP&quot;, &quot;HOUSE_OCUPPANCY&quot;, &quot;HOUSE_CHILDREN&quot;, &quot;HAS_GARDEN&quot;, &quot;IS_GARDEN_FENCED&quot;, &quot;CHILD_PLAN&quot;, &quot;HAS_CHILDREN_VISITING&quot;, &quot;HAS_OTHER_PETS&quot;, &quot;HAS_EXPERIENCE&quot;, &quot;MAX_HOURS_ALONE&quot;, &quot;PET_PLACE_ALONE&quot;, &quot;HAS_GARDEN_ACCESS&quot;, &quot;PET_PLACE_HOLIDAYS&quot;, &quot;WALK_SCHEDULE&quot;, &quot;WEATHER_WALK_SCHEDULE&quot;, &quot;DEMANDS_HOUSE_TRAINED&quot;, &quot;EMPLOYMENT_STATUS&quot;, &quot;HAS_HOLIDAY_PLANS&quot;) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE &quot;APPLICANT&quot; SET &quot;STATUS&quot; = :STATUS, &quot;APPLICANT_NAME&quot; = :APPLICANT_NAME, &quot;ADDRESS&quot; = :ADDRESS, &quot;POSTCODE&quot; = :POSTCODE, &quot;CITY&quot; = :CITY, &quot;PHONE_NUMBER&quot; = :PHONE_NUMBER, &quot;ADDITIONAL_PHONE_NUMBER&quot; = :ADDITIONAL_PHONE_NUMBER,  &quot;EMAIL&quot; = :EMAIL, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;PET_SEX&quot; = :PET_SEX, &quot;PET_AGE&quot; = :PET_AGE, &quot;PET_SIZE&quot; = :PET_SIZE, &quot;HEALTH_ISSUES&quot; = :HEALTH_ISSUES, &quot;HOUSE_TYPE&quot; = :HOUSE_TYPE, &quot;HOUSE_OWNERSHIP&quot; = :HOUSE_OWNERSHIP, &quot;HOUSE_OCUPPANCY&quot; =: HOUSE_OCUPPANCY, &quot;HOUSE_CHILDREN&quot; = :HOUSE_CHILDREN, &quot;HAS_GARDEN&quot; = :HAS_GARDEN, &quot;IS_GARDEN_FENCED&quot; = :IS_GARDEN_FENCED, &quot;CHILD_PLAN&quot; = :CHILD_PLAN, &quot;HAS_CHILDREN_VISITING&quot; = :HAS_CHILDREN_VISITING, &quot;HAS_OTHER_PETS&quot; = :HAS_OTHER_PETS, &quot;HAS_EXPERIENCE&quot; = :HAS_EXPERIENCE, &quot;MAX_HOURS_ALONE&quot; = :MAX_HOURS_ALONE, &quot;PET_PLACE_ALONE&quot; = :PET_PLACE_ALONE, &quot;HAS_GARDEN_ACCESS&quot; = :HAS_GARDEN_ACCESS, &quot;PET_PLACE_HOLIDAYS&quot; = :PET_PLACE_HOLIDAYS, &quot;WALK_SCHEDULE&quot; = :WALK_SCHEDULE, &quot;WEATHER_WALK_SCHEDULE&quot; = :WEATHER_WALK_SCHEDULE, &quot;DEMANDS_HOUSE_TRAINED&quot; = :DEMANDS_HOUSE_TRAINED, &quot;EMPLOYMENT_STATUS&quot; = :EMPLOYMENT_STATUS, &quot;HAS_HOLIDAY_PLANS&quot; = :HAS_HOLIDAY_PLANS WHERE &quot;APPLICANT_ID&quot; = :APPLICANT_ID" OnSelecting="SqlDataSource1_Selecting">
                    <DeleteParameters>
                        <asp:Parameter Name="APPLICANT_ID" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="APPLICANT_ID" Type="Decimal" />
                        <asp:Parameter Name="STATUS" Type="String" />
                        <asp:Parameter Name="APPLICANT_NAME" Type="String" />
                        <asp:Parameter Name="ADDRESS" Type="String" />
                        <asp:Parameter Name="POSTCODE" Type="String" />
                        <asp:Parameter Name="CITY" Type="String" />
                        <asp:Parameter Name="PHONE_NUMBER" Type="Decimal" />
                        <asp:Parameter Name="ADDITIONAL_PHONE_NUMBER" Type="Decimal" />
                        <asp:Parameter Name="EMAIL" Type="String" />
                        <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
                        <asp:Parameter Name="PET_SEX" Type="String" />
                        <asp:Parameter Name="PET_AGE" Type="String" />
                        <asp:Parameter Name="PET_SIZE" Type="String" />
                        <asp:Parameter Name="HEALTH_ISSUES" Type="String" />
                        <asp:Parameter Name="HOUSE_TYPE" Type="String" />
                        <asp:Parameter Name="HOUSE_OWNERSHIP" Type="String" />
                        <asp:Parameter Name="HOUSE_OCUPPANCY" Type="String" />
                        <asp:Parameter Name="HOUSE_CHILDREN" Type="String" />
                        <asp:Parameter Name="HAS_GARDEN" Type="String" />
                        <asp:Parameter Name="IS_GARDEN_FENCED" Type="String" />
                        <asp:Parameter Name="CHILD_PLAN" Type="String" />
                        <asp:Parameter Name="HAS_CHILDREN_VISITING" Type="String" />
                        <asp:Parameter Name="HAS_OTHER_PETS" Type="String" />
                        <asp:Parameter Name="HAS_EXPERIENCE" Type="String" />
                        <asp:Parameter Name="MAX_HOURS_ALONE" Type="String" />
                        <asp:Parameter Name="PET_PLACE_ALONE" Type="String" />
                        <asp:Parameter Name="HAS_GARDEN_ACCESS" Type="String" />
                        <asp:Parameter Name="PET_PLACE_HOLIDAYS" Type="String" />
                        <asp:Parameter Name="WALK_SCHEDULE" Type="String" />
                        <asp:Parameter Name="WEATHER_WALK_SCHEDULE" Type="String" />
                        <asp:Parameter Name="DEMANDS_HOUSE_TRAINED" Type="String" />
                        <asp:Parameter Name="EMPLOYMENT_STATUS" Type="String" />
                        <asp:Parameter Name="HAS_HOLIDAY_PLANS" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="STATUS" PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="GridView2" Name="STATUS" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="APPLICANT_NAME" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="ADDRESS" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="POSTCODE" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="CITY" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="PHONE_NUMBER" PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="GridView2" Name="ADDITIONAL_PHONE_NUMBER" PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="GridView2" Name="EMAIL" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="DATE_OF_BIRTH" PropertyName="SelectedValue" Type="DateTime" />
                        <asp:ControlParameter ControlID="GridView2" Name="PET_SEX" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="PET_AGE" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="PET_SIZE" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="HEALTH_ISSUES" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="HOUSE_TYPE" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="HOUSE_OWNERSHIP" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="HOUSE_OCUPPANCY" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="HOUSE_CHILDREN" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="HAS_GARDEN" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="IS_GARDEN_FENCED" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="CHILD_PLAN" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="HAS_CHILDREN_VISITING" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="HAS_OTHER_PETS" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="HAS_EXPERIENCE" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="MAX_HOURS_ALONE" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="PET_PLACE_ALONE" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="HAS_GARDEN_ACCESS" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="PET_PLACE_HOLIDAYS" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="WALK_SCHEDULE" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="WEATHER_WALK_SCHEDULE" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="DEMANDS_HOUSE_TRAINED" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="EMPLOYMENT_STATUS" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="HAS_HOLIDAY_PLANS" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView2" Name="APPLICANT_ID" PropertyName="SelectedValue" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView2" class="table table-hover" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="APPLICANT_ID">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="APPLICANT_ID" HeaderText="APPLICANT_ID" ReadOnly="True" SortExpression="APPLICANT_ID" />
                        <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                        <asp:BoundField DataField="APPLICANT_NAME" HeaderText="APPLICANT_NAME" SortExpression="APPLICANT_NAME" />
                        <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                        <asp:BoundField DataField="POSTCODE" HeaderText="POSTCODE" SortExpression="POSTCODE" />
                        <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                        <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
                        <asp:BoundField DataField="ADDITIONAL_PHONE_NUMBER" HeaderText="ADDITIONAL_PHONE_NUMBER" SortExpression="ADDITIONAL_PHONE_NUMBER" />
                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                        <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" />
                        <asp:BoundField DataField="PET_SEX" HeaderText="PET_SEX" SortExpression="PET_SEX" />
                        <asp:BoundField DataField="PET_AGE" HeaderText="PET_AGE" SortExpression="PET_AGE" />
                        <asp:BoundField DataField="PET_SIZE" HeaderText="PET_SIZE" SortExpression="PET_SIZE" />
                        <asp:BoundField DataField="HEALTH_ISSUES" HeaderText="HEALTH_ISSUES" SortExpression="HEALTH_ISSUES" />
                        <asp:BoundField DataField="HOUSE_TYPE" HeaderText="HOUSE_TYPE" SortExpression="HOUSE_TYPE" />
                        <asp:BoundField DataField="HOUSE_OWNERSHIP" HeaderText="HOUSE_OWNERSHIP" SortExpression="HOUSE_OWNERSHIP" />
                        <asp:BoundField DataField="HOUSE_OCUPPANCY" HeaderText="HOUSE_OCUPPANCY" SortExpression="HOUSE_OCUPPANCY" />
                        <asp:BoundField DataField="HOUSE_CHILDREN" HeaderText="HOUSE_CHILDREN" SortExpression="HOUSE_CHILDREN" />
                        <asp:BoundField DataField="HAS_GARDEN" HeaderText="HAS_GARDEN" SortExpression="HAS_GARDEN" />
                        <asp:BoundField DataField="IS_GARDEN_FENCED" HeaderText="IS_GARDEN_FENCED" SortExpression="IS_GARDEN_FENCED" />
                        <asp:BoundField DataField="CHILD_PLAN" HeaderText="CHILD_PLAN" SortExpression="CHILD_PLAN" />
                        <asp:BoundField DataField="HAS_CHILDREN_VISITING" HeaderText="HAS_CHILDREN_VISITING" SortExpression="HAS_CHILDREN_VISITING" />
                        <asp:BoundField DataField="HAS_OTHER_PETS" HeaderText="HAS_OTHER_PETS" SortExpression="HAS_OTHER_PETS" />
                        <asp:BoundField DataField="HAS_EXPERIENCE" HeaderText="HAS_EXPERIENCE" SortExpression="HAS_EXPERIENCE" />
                        <asp:BoundField DataField="MAX_HOURS_ALONE" HeaderText="MAX_HOURS_ALONE" SortExpression="MAX_HOURS_ALONE" />
                        <asp:BoundField DataField="PET_PLACE_ALONE" HeaderText="PET_PLACE_ALONE" SortExpression="PET_PLACE_ALONE" />
                        <asp:BoundField DataField="HAS_GARDEN_ACCESS" HeaderText="HAS_GARDEN_ACCESS" SortExpression="HAS_GARDEN_ACCESS" />
                        <asp:BoundField DataField="PET_PLACE_HOLIDAYS" HeaderText="PET_PLACE_HOLIDAYS" SortExpression="PET_PLACE_HOLIDAYS" />
                        <asp:BoundField DataField="WALK_SCHEDULE" HeaderText="WALK_SCHEDULE" SortExpression="WALK_SCHEDULE" />
                        <asp:BoundField DataField="WEATHER_WALK_SCHEDULE" HeaderText="WEATHER_WALK_SCHEDULE" SortExpression="WEATHER_WALK_SCHEDULE" />
                        <asp:BoundField DataField="DEMANDS_HOUSE_TRAINED" HeaderText="DEMANDS_HOUSE_TRAINED" SortExpression="DEMANDS_HOUSE_TRAINED" />
                        <asp:BoundField DataField="EMPLOYMENT_STATUS" HeaderText="EMPLOYMENT_STATUS" SortExpression="EMPLOYMENT_STATUS" />
                        <asp:BoundField DataField="HAS_HOLIDAY_PLANS" HeaderText="HAS_HOLIDAY_PLANS" SortExpression="HAS_HOLIDAY_PLANS" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
