<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit Dogs.aspx.cs" Inherits="Test.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="forms">
        <h3>Filter by size and sex:</h3>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Dropdown" DataTextField="PET_SIZE" DataValueField="PET_SIZE" AutoPostBack="True">
            <asp:ListItem Selected="True">Any</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
        </asp:DropDownList>

        <asp:SqlDataSource ID="Dropdown" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PET_SIZE&quot; FROM &quot;ANIMAL&quot;"></asp:SqlDataSource>

        <asp:DropDownList ID="DropDownListSex" runat="server" AutoPostBack="True" DataSourceID="DropdownSex" DataTextField="SEX" DataValueField="SEX">
            <asp:ListItem Selected="True">All</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="DropdownSex" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;SEX&quot; FROM &quot;ANIMAL&quot;"></asp:SqlDataSource>

        <br />
        <br />
        <div class="scrolltable">
            <asp:GridView ID="GridView1" class="table table-hover" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="PET_ID">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="PET_ID" HeaderText="PET_ID" ReadOnly="True" SortExpression="PET_ID" />
                    <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                    <asp:BoundField DataField="PET_NAME" HeaderText="PET_NAME" SortExpression="PET_NAME" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                    <asp:BoundField DataField="POSTCODE" HeaderText="POSTCODE" SortExpression="POSTCODE" />
                    <asp:BoundField DataField="FOSTER_PHONE_NUMBER" HeaderText="FOSTER_PHONE_NUMBER" SortExpression="FOSTER_PHONE_NUMBER" />
                    <asp:BoundField DataField="AGE" HeaderText="AGE" SortExpression="AGE" />
                    <asp:BoundField DataField="SEX" HeaderText="SEX" SortExpression="SEX" />
                    <asp:BoundField DataField="PET_SIZE" HeaderText="PET_SIZE" SortExpression="PET_SIZE" />
                    <asp:BoundField DataField="HOUSE_REQUIREMENT" HeaderText="HOUSE_REQUIREMENT" SortExpression="HOUSE_REQUIREMENT" />
                    <asp:BoundField DataField="IS_CHILD_SAFE" HeaderText="IS_CHILD_SAFE" SortExpression="IS_CHILD_SAFE" />
                    <asp:BoundField DataField="GARDEN_SIZE" HeaderText="GARDEN_SIZE" SortExpression="GARDEN_SIZE" />
                    <asp:BoundField DataField="IS_PET_SAFE" HeaderText="IS_PET_SAFE" SortExpression="IS_PET_SAFE" />
                    <asp:BoundField DataField="BEHAVIOUR" HeaderText="BEHAVIOUR" SortExpression="BEHAVIOUR" />
                    <asp:BoundField DataField="IS_HOUSE_TRAINED" HeaderText="IS_HOUSE_TRAINED" SortExpression="IS_HOUSE_TRAINED" />
                    <asp:BoundField DataField="IMAGE" HeaderText="IMAGE" SortExpression="IMAGE" />
                    <asp:BoundField DataField="PET_DESCRIPTION" HeaderText="PET_DESCRIPTION" SortExpression="PET_DESCRIPTION" />
                    <asp:BoundField DataField="CREATED" HeaderText="CREATED" ReadOnly="True" SortExpression="CREATED" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT * FROM &quot;ANIMAL&quot; WHERE &quot;SEX&quot; = :SEX AND &quot;PET_SIZE&quot; =: PET_SIZE" DeleteCommand="DELETE FROM &quot;ANIMAL&quot; WHERE &quot;PET_ID&quot; = ?" InsertCommand="INSERT INTO &quot;ANIMAL&quot; (&quot;PET_ID&quot;, &quot;STATUS&quot;, &quot;PET_NAME&quot;, &quot;ADDRESS&quot;, &quot;POSTCODE&quot;, &quot;FOSTER_PHONE_NUMBER&quot;, &quot;AGE&quot;, &quot;SEX&quot;, &quot;PET_SIZE&quot;, &quot;HOUSE_REQUIREMENT&quot;, &quot;IS_CHILD_SAFE&quot;, &quot;GARDEN_SIZE&quot;, &quot;IS_PET_SAFE&quot;, &quot;BEHAVIOUR&quot;, &quot;IS_HOUSE_TRAINED&quot;, &quot;IMAGE&quot;, &quot;PET_DESCRIPTION&quot;, &quot;CREATED&quot;) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE &quot;ANIMAL&quot; SET &quot;STATUS&quot; = :STATUS, &quot;PET_NAME&quot; = :PET_NAME, &quot;ADDRESS&quot; = :ADDRESS, &quot;POSTCODE&quot; = :POSTCODE, &quot;FOSTER_PHONE_NUMBER&quot; = :FOSTER_PHONE_NUMBER, &quot;AGE&quot; = :AGE, &quot;SEX&quot; = :SEX, &quot;PET_SIZE&quot; = :PET_SIZE, &quot;HOUSE_REQUIREMENT&quot; = :HOUSE_REQUIREMENT, &quot;IS_CHILD_SAFE&quot; = :IS_CHILD_SAFE, &quot;GARDEN_SIZE&quot; = :GARDEN_SIZE, &quot;IS_PET_SAFE&quot; = :IS_PET_SAFE, &quot;BEHAVIOUR&quot; = :BEHAVIOUR, &quot;IS_HOUSE_TRAINED&quot; = :IS_HOUSE_TRAINED, &quot;IMAGE&quot; = :IMAGE, &quot;PET_DESCRIPTION&quot; = :PET_DESCRIPTION, &quot;CREATED&quot; = :CREATED WHERE &quot;PET_ID&quot; = :PET_ID">
                <DeleteParameters>
                    <asp:Parameter Name="PET_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PET_ID" Type="Decimal" />
                    <asp:Parameter Name="STATUS" Type="Decimal" />
                    <asp:Parameter Name="PET_NAME" Type="String" />
                    <asp:Parameter Name="ADDRESS" Type="String" />
                    <asp:Parameter Name="POSTCODE" Type="String" />
                    <asp:Parameter Name="FOSTER_PHONE_NUMBER" Type="Decimal" />
                    <asp:Parameter Name="AGE" Type="String" />
                    <asp:Parameter Name="SEX" Type="String" />
                    <asp:Parameter Name="PET_SIZE" Type="String" />
                    <asp:Parameter Name="HOUSE_REQUIREMENT" Type="String" />
                    <asp:Parameter Name="IS_CHILD_SAFE" Type="String" />
                    <asp:Parameter Name="GARDEN_SIZE" Type="String" />
                    <asp:Parameter Name="IS_PET_SAFE" Type="String" />
                    <asp:Parameter Name="BEHAVIOUR" Type="String" />
                    <asp:Parameter Name="IS_HOUSE_TRAINED" Type="String" />
                    <asp:Parameter Name="IMAGE" Type="String" />
                    <asp:Parameter Name="PET_DESCRIPTION" Type="String" />
                    <asp:Parameter Name="CREATED" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownListSex" Name="SEX" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="PET_SIZE" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="STATUS" PropertyName="SelectedValue" Type="Decimal" />
                    <asp:ControlParameter ControlID="GridView1" Name="PET_NAME" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="ADDRESS" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="POSTCODE" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="FOSTER_PHONE_NUMBER" PropertyName="SelectedValue" Type="Decimal" />
                    <asp:ControlParameter ControlID="GridView1" Name="AGE" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="SEX" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="PET_SIZE" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="HOUSE_REQUIREMENT" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="IS_CHILD_SAFE" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="GARDEN_SIZE" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="IS_PET_SAFE" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="BEHAVIOUR" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="IS_HOUSE_TRAINED" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="IMAGE" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="PET_DESCRIPTION" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="CREATED" PropertyName="SelectedValue" Type="DateTime" />
                    <asp:ControlParameter ControlID="GridView1" Name="PET_ID" PropertyName="SelectedValue" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <hr />
    <br />
     <h4>Select the Dog ID to find the perfect matches:<asp:DropDownList ID="DropDownListDogId" runat="server" DataSourceID="DogID" DataTextField="PET_ID" DataValueField="PET_ID" AutoPostBack="True"></asp:DropDownList></h4>
     <h4>Select number of applicants you want to display:<asp:DropDownList ID="DropDownNApplicants" runat="server" AutoPostBack="True">
         <asp:ListItem>10</asp:ListItem>
         <asp:ListItem>15</asp:ListItem>
         <asp:ListItem>20</asp:ListItem>
         <asp:ListItem>35</asp:ListItem>
         </asp:DropDownList></h4>
    <p>&nbsp;</p>
    <asp:SqlDataSource ID="DogID" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT &quot;PET_ID&quot; FROM &quot;ANIMAL&quot;"></asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="BestMatch">
    </asp:GridView>
    <asp:SqlDataSource ID="BestMatch" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT *
FROM (SELECT ANI.PET_ID, ANI.PET_NAME, APL.APPLICANT_NAME, APL.APPLICANT_ID, POINTS.POINTS
FROM ANIMAL ANI
INNER JOIN APPLICANT APL
ON ANI.SEX = APL.PET_SEX AND ANI.PET_SIZE = APL.PET_SIZE AND ANI.AGE=APL.PET_AGE
LEFT JOIN (SELECT CP.APPLICANT_ID, sum(CP.CHILD_PLAN_POINTS + HG.HAS_GARDEN_POINTS + HC.HOUSE_CHILDREN_POINTS + IGF.IS_GARDEN_FENCED_POINTS + HE.HAS_EXPERIENCE_POINTS +
MHA.MAX_HOURS_ALONE_POINTS + PPA.PET_PLACE_ALONE_POINTS + HGA.HAS_GARDEN_ACCESS_POINTS + WS.WALK_SCHEDULE_POINTS + WWS.WEATHER_WALK_SCHEDULE_POINTS + EMPLOYMENT_STATUS_POINTS) AS POINTS
FROM (SELECT APPLICANT_ID,
            CASE
                WHEN CHILD_PLAN = 'No' THEN '5'
                WHEN CHILD_PLAN = 'In the next year' THEN '0'
                WHEN CHILD_PLAN = 'Between 1 and 2 years' THEN '2'
                ELSE '5'
            END AS CHILD_PLAN_POINTS
        FROM APPLICANT) CP 
INNER JOIN (SELECT APPLICANT_ID,
                    CASE
                        WHEN HAS_GARDEN = 'No garden' THEN '0'
                        WHEN HAS_GARDEN = 'Small (less than 15m2)' THEN '1'
                        WHEN HAS_GARDEN = 'Medium (between 15 and 60m2)' THEN '2'
                        WHEN HAS_GARDEN = 'Large (larger than 60m2)' THEN '3'
                        ELSE '0'
                    END AS HAS_GARDEN_POINTS
FROM APPLICANT)HG
ON CP.APPLICANT_ID = HG.APPLICANT_ID
INNER JOIN (SELECT APPLICANT_ID,
                    CASE
                        WHEN HOUSE_CHILDREN = '3 or more' THEN '0'
                        WHEN HOUSE_CHILDREN = '2' THEN '1'
                        WHEN HOUSE_CHILDREN = '1' THEN '3'
                        ELSE '5'
                    END AS HOUSE_CHILDREN_POINTS
FROM APPLICANT)HC
ON CP.APPLICANT_ID = HC.APPLICANT_ID
INNER JOIN (SELECT APPLICANT_ID,
                    CASE
                        WHEN IS_GARDEN_FENCED = 'Without fences' THEN '0'
                        WHEN IS_GARDEN_FENCED = 'Lower than 6ft' THEN '0'
                        ELSE '1'
                    END AS IS_GARDEN_FENCED_POINTS
FROM APPLICANT)IGF
ON CP.APPLICANT_ID = IGF.APPLICANT_ID
INNER JOIN (SELECT APPLICANT_ID,
                    CASE
                        WHEN HAS_EXPERIENCE = 'No' THEN '0'
                        ELSE '3'
                    END AS HAS_EXPERIENCE_POINTS
FROM APPLICANT)HE
ON CP.APPLICANT_ID = HE.APPLICANT_ID
INNER JOIN (SELECT APPLICANT_ID,
                    CASE
                        WHEN MAX_HOURS_ALONE = 'Less than 2' THEN '6'
                        WHEN MAX_HOURS_ALONE = '2-4' THEN '5'
                        WHEN MAX_HOURS_ALONE = '4-6' THEN '4'
                        WHEN MAX_HOURS_ALONE = '6-8' THEN '1'
                        ELSE '0'
                    END AS MAX_HOURS_ALONE_POINTS
FROM APPLICANT)MHA
ON CP.APPLICANT_ID = MHA.APPLICANT_ID
INNER JOIN (SELECT APPLICANT_ID,
                    CASE
                        WHEN PET_PLACE_ALONE = 'In the garden' THEN '0'
                        WHEN PET_PLACE_ALONE = 'Other' THEN '0'
                        WHEN PET_PLACE_ALONE = 'Family/Friend' THEN '2'
                        WHEN PET_PLACE_ALONE = 'Dog Day Care' THEN '2'
                        ELSE '1'
                    END AS PET_PLACE_ALONE_POINTS
FROM APPLICANT)PPA
ON CP.APPLICANT_ID = PPA.APPLICANT_ID
INNER JOIN (SELECT APPLICANT_ID,
                    CASE
                        WHEN HAS_GARDEN_ACCESS = 'Yes' THEN '3'
                        ELSE '0'
                    END AS HAS_GARDEN_ACCESS_POINTS
FROM APPLICANT)HGA
ON CP.APPLICANT_ID = HGA.APPLICANT_ID
INNER JOIN (SELECT APPLICANT_ID,
                    CASE
                        WHEN WALK_SCHEDULE = 'Twice a day' THEN '5'
                        WHEN WALK_SCHEDULE = 'Once a day' THEN '2'
                        WHEN WALK_SCHEDULE = 'Every other day' THEN '1'
                        ELSE '0'
                    END AS WALK_SCHEDULE_POINTS
FROM APPLICANT)WS
ON CP.APPLICANT_ID = WS.APPLICANT_ID
INNER JOIN (SELECT APPLICANT_ID,
                    CASE
                        WHEN WEATHER_WALK_SCHEDULE = 'No' THEN '5'
                        ELSE '0'
                    END AS WEATHER_WALK_SCHEDULE_POINTS
FROM APPLICANT)WWS
ON CP.APPLICANT_ID = WWS.APPLICANT_ID
INNER JOIN (SELECT APPLICANT_ID,
                    CASE
                        WHEN EMPLOYMENT_STATUS = 'Full-time' THEN '1'
                        WHEN EMPLOYMENT_STATUS = 'Part-time' THEN '2'
                        WHEN EMPLOYMENT_STATUS = 'Student' THEN '2'
                        WHEN EMPLOYMENT_STATUS = 'Work from home' THEN '3'
                        WHEN EMPLOYMENT_STATUS = 'Unemployed' THEN '0'
                        ELSE '5'
                    END AS EMPLOYMENT_STATUS_POINTS
FROM APPLICANT)ES
ON CP.APPLICANT_ID = ES.APPLICANT_ID
GROUP BY CP.APPLICANT_ID) POINTS ON POINTS.APPLICANT_ID = APL.APPLICANT_ID
WHERE ANI.PET_ID =:DropDownListDogId 
ORDER BY POINTS.POINTS DESC, APL.CREATED DESC) TOP10
WHERE ROWNUM &lt;= :DropDownNApplicants
">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownListDogId" Name="DropDownListDogId" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DropDownNApplicants" Name="DropDownNApplicants" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
