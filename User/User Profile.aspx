<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User Profile.aspx.cs" Inherits="Test.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="forms">
        <div class="columnleft">
                <div class="addProfile">
                    <fieldset class="insert">
                        <legend>Your Details</legend>
                        <div class="center">
                            <asp:DetailsView ID="DetailsView1" class="table table-hover" runat="server" Height="16px" Width="484px" AutoGenerateRows="False" DataKeyNames="APPLICANT_ID" DataSourceID="details">
                                <Fields>
                                    <asp:BoundField DataField="APPLICANT_ID" HeaderText="ID                                               " ReadOnly="True" SortExpression="APPLICANT_ID" />
                                    <asp:BoundField DataField="STATUS" HeaderText="Status" SortExpression="STATUS" />
                                    <asp:BoundField DataField="STATUS" HeaderText="Status" SortExpression="STATUS" />
                                    <asp:BoundField DataField="APPLICANT_NAME" HeaderText="Name" SortExpression="APPLICANT_NAME" />
                                    <asp:BoundField DataField="ADDRESS" HeaderText="Address" SortExpression="ADDRESS" />
                                    <asp:BoundField DataField="POSTCODE" HeaderText="Postcode" SortExpression="POSTCODE" />
                                    <asp:BoundField DataField="CITY" HeaderText="City" SortExpression="CITY" />
                                    <asp:BoundField DataField="PHONE_NUMBER" HeaderText="Phone" SortExpression="PHONE_NUMBER" />
                                    <asp:BoundField DataField="ADDITIONAL_PHONE_NUMBER" HeaderText="Additional Phone" SortExpression="ADDITIONAL_PHONE_NUMBER" />
                                    <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />
                                    <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="Date of Birth" SortExpression="DATE_OF_BIRTH" />
                                    <asp:BoundField DataField="PET_SEX" HeaderText="Pet Sex" SortExpression="PET_SEX" />
                                    <asp:BoundField DataField="PET_AGE" HeaderText="Pet Age" SortExpression="PET_AGE" />
                                    <asp:BoundField DataField="PET_SIZE" HeaderText="Pet Size" SortExpression="PET_SIZE" />
                                    <asp:BoundField DataField="HEALTH_ISSUES" HeaderText="Health Issues" SortExpression="HEALTH_ISSUES" />
                                    <asp:BoundField DataField="HOUSE_TYPE" HeaderText="Type of House" SortExpression="HOUSE_TYPE" />
                                    <asp:BoundField DataField="HOUSE_OWNERSHIP" HeaderText="Ownership" SortExpression="HOUSE_OWNERSHIP" />
                                    <asp:BoundField DataField="HOUSE_OCUPPANCY" HeaderText="Ocuppancy" SortExpression="HOUSE_OCUPPANCY" />
                                    <asp:BoundField DataField="HOUSE_CHILDREN" HeaderText="Number of Children" SortExpression="HOUSE_CHILDREN" />
                                    <asp:BoundField DataField="HAS_GARDEN" HeaderText="Has Garden?" SortExpression="HAS_GARDEN" />
                                    <asp:BoundField DataField="IS_GARDEN_FENCED" HeaderText="Is the garden Fenced?" SortExpression="IS_GARDEN_FENCED" />
                                    <asp:BoundField DataField="CHILD_PLAN" HeaderText="Is planning to have child?" SortExpression="CHILD_PLAN" />
                                    <asp:BoundField DataField="HAS_CHILDREN_VISITING" HeaderText="Has children visiting" SortExpression="HAS_CHILDREN_VISITING" />
                                    <asp:BoundField DataField="HAS_OTHER_PETS" HeaderText="Other pets" SortExpression="HAS_OTHER_PETS" />
                                    <asp:BoundField DataField="HAS_EXPERIENCE" HeaderText="Experience" SortExpression="HAS_EXPERIENCE" />
                                    <asp:BoundField DataField="MAX_HOURS_ALONE" HeaderText="Max Hours alone" SortExpression="MAX_HOURS_ALONE" />
                                    <asp:BoundField DataField="PET_PLACE_ALONE" HeaderText="Place to stay alone" SortExpression="PET_PLACE_ALONE" />
                                    <asp:BoundField DataField="HAS_GARDEN_ACCESS" HeaderText="Has garden access?" SortExpression="HAS_GARDEN_ACCESS" />
                                    <asp:BoundField DataField="PET_PLACE_HOLIDAYS" HeaderText="Place when on holidays" SortExpression="PET_PLACE_HOLIDAYS" />
                                    <asp:BoundField DataField="WALK_SCHEDULE" HeaderText="Walking schedule" SortExpression="WALK_SCHEDULE" />
                                    <asp:BoundField DataField="WEATHER_WALK_SCHEDULE" HeaderText="Will weather interfere on schedule" SortExpression="WEATHER_WALK_SCHEDULE" />
                                    <asp:BoundField DataField="DEMANDS_HOUSE_TRAINED" HeaderText="Training" SortExpression="DEMANDS_HOUSE_TRAINED" />
                                    <asp:BoundField DataField="EMPLOYMENT_STATUS" HeaderText="Employment Status" SortExpression="EMPLOYMENT_STATUS" />
                                    <asp:BoundField DataField="HAS_HOLIDAY_PLANS" HeaderText="Holidays plans" SortExpression="HAS_HOLIDAY_PLANS" />
                                    <asp:BoundField DataField="CREATED" HeaderText="CREATED" SortExpression="Date of creation" />
                                </Fields>
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="details" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT * FROM &quot;APPLICANT&quot; where &quot;EMAIL&quot; =:email">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="email" Name="email" PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <asp:SqlDataSource ID="retrieve" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT * FROM &quot;APPLICANT&quot;"></asp:SqlDataSource>

                        </div>
                    </fieldset>
                </div>
            </div>

        
        <div class="columnright">
            <fieldset class="insert">
                <legend>Edit your details</legend>
                <asp:Label ID="Label10" runat="server" Text="Label">Status:</asp:Label>
                <div class="custom-control custom-radio custom-control-inline">
                    <asp:RadioButtonList ID="Status" runat="server">
                        <asp:ListItem class="custom-control-input" Value="Adopting"></asp:ListItem>
                        <asp:ListItem class="custom-control-input" Value="Not Adopting"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorStatus" runat="server" ControlToValidate="Status" ErrorMessage="Please select your status" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
                <asp:Label ID="Label1" runat="server" Text="Label">Name:</asp:Label>
                <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="name" ErrorMessage="Please enter your name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br>

                <asp:Label ID="Label11" runat="server" Text="Label">Address:</asp:Label>
                <asp:TextBox ID="adress" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="adress" ErrorMessage="Please enter your address" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br>

                <asp:Label ID="Label12" runat="server" Text="Label">Postcode:</asp:Label>
                <asp:TextBox ID="postcode" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="postcode" ErrorMessage="Please enter your postcode" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br>

                <asp:Label ID="Label13" runat="server" Text="Label">City:</asp:Label>
                <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="city" ErrorMessage="Please enter your city" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br>

                <asp:Label ID="Label14" runat="server" Text="Label">Phone Number:</asp:Label>
                <asp:TextBox ID="phone" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phone" ErrorMessage="Please enter your phone number" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br>

                <asp:Label ID="Label15" runat="server" Text="Label">Aditional Phone Number:</asp:Label>
                <asp:TextBox ID="additionalPhone" runat="server" CssClass="form-control"></asp:TextBox><br>

                <asp:Label ID="Label3" runat="server" Text="Label">Email Address:</asp:Label><br />
                <asp:Label ID="email" runat="server" CssClass="form-control" Text="<%: Context.User.Identity.GetUserName()  %>" Width="280px"></asp:Label>
                <br />
                <br />

                <asp:Label ID="Label2" runat="server" Text="Label">Date of Birth:</asp:Label>
                <asp:TextBox ID="dob" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="dob" ErrorMessage="Please enter your date of birth" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br>


                <asp:Label ID="Label5" runat="server" Text="Label">Pet Sex:</asp:Label>
                <asp:DropDownList ID="sex" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="Male"></asp:ListItem>
                    <asp:ListItem Value="Female"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label4" runat="server" Text="Label">Pet Age:</asp:Label>
                <asp:DropDownList ID="age" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="Puppy"></asp:ListItem>
                    <asp:ListItem Value="Young adult"></asp:ListItem>
                    <asp:ListItem Value="Adult "></asp:ListItem>
                    <asp:ListItem Value="Senior"></asp:ListItem>
                </asp:DropDownList><br>


                <asp:Label ID="Label6" runat="server" Text="Label">Pet Size:</asp:Label>
                <asp:DropDownList ID="size" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="Small"></asp:ListItem>
                    <asp:ListItem Value="Medium"></asp:ListItem>
                    <asp:ListItem Value="Large"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label7" runat="server" Text="Label">Do you have any medical issues to consider during the matching process?</asp:Label>
                <asp:TextBox ID="health_issues" runat="server" CssClass="form-control"></asp:TextBox><br>

                <asp:Label ID="Label8" runat="server" Text="Label">Is your home:</asp:Label>
                <asp:DropDownList ID="homeType" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="House"></asp:ListItem>
                    <asp:ListItem Value="Flat"></asp:ListItem>
                    <asp:ListItem Value="Other"></asp:ListItem>
                </asp:DropDownList><br>


                <asp:Label ID="Label9" runat="server" Text="Label">Ownership:</asp:Label>
                <asp:DropDownList ID="ownership" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="Rented (Needs aproval letter from the landlord)"></asp:ListItem>
                    <asp:ListItem Value="Owned"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label16" runat="server" Text="Label">How many adults live in the household:</asp:Label>
                <asp:DropDownList ID="ocuppancy" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4 or more"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label17" runat="server" Text="Label">How many children live in the household:</asp:Label>
                <asp:DropDownList ID="childnumber" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="0"></asp:ListItem>
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3 or more"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label18" runat="server" Text="Label">Do you have a garden?</asp:Label>
                <asp:DropDownList ID="garden" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="No garden"></asp:ListItem>
                    <asp:ListItem Value="Small (less than 15sqm)"></asp:ListItem>
                    <asp:ListItem Value="Medium (between 15 and 60sqm)"></asp:ListItem>
                    <asp:ListItem Value="Large (larger than 60sqm)"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label19" runat="server" Text="Label">Is the garden fenced?</asp:Label>
                <asp:DropDownList ID="gerdenFence" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="Without fences"></asp:ListItem>
                    <asp:ListItem Value="Lower than 6ft"></asp:ListItem>
                    <asp:ListItem Value="6ft or higher"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label20" runat="server" Text="Label">Do you plan on having kids?</asp:Label>
                <asp:DropDownList ID="kidsPlans" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="No"></asp:ListItem>
                    <asp:ListItem Value="In the next year"></asp:ListItem>
                    <asp:ListItem Value="Between 1 and 2 years"></asp:ListItem>
                    <asp:ListItem Value="In 5 years or more"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label21" runat="server" Text="Label">Do you have kids visiting?</asp:Label>
                <div class="custom-control custom-radio custom-control-inline">
                    <asp:RadioButtonList ID="kidsVisiting" runat="server">
                        <asp:ListItem class="custom-control-input" Value="Yes"></asp:ListItem>
                        <asp:ListItem class="custom-control-input" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="kidsVisiting" ErrorMessage="Please choose an option" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>

                <asp:Label ID="Label22" runat="server" Text="Label">Do you have other pets?</asp:Label>
                <asp:DropDownList ID="otherPets" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="No"></asp:ListItem>
                    <asp:ListItem Value="Dog"></asp:ListItem>
                    <asp:ListItem Value="Cat"></asp:ListItem>
                    <asp:ListItem Value="Other"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label23" runat="server" Text="Label">Do you have experience with dogs?</asp:Label>
                <div class="custom-control custom-radio custom-control-inline">
                    <asp:RadioButtonList ID="experience" runat="server">
                        <asp:ListItem class="custom-control-input" Value="Yes"></asp:ListItem>
                        <asp:ListItem class="custom-control-input" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="experience" ErrorMessage="Please choose an option" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>

                <asp:Label ID="Label24" runat="server" Text="Label">How many HOURS will the dog be alone daily?</asp:Label>
                <asp:DropDownList ID="timeAlone" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value=">2"></asp:ListItem>
                    <asp:ListItem Value="2-4"></asp:ListItem>
                    <asp:ListItem Value="4-6"></asp:ListItem>
                    <asp:ListItem Value="6-8"></asp:ListItem>
                    <asp:ListItem Value="More than 8"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label25" runat="server" Text="Label">Where will the dog be left when alone?</asp:Label>
                <asp:DropDownList ID="placeAlone" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="Specific Room"></asp:ListItem>
                    <asp:ListItem Value="All of one floor"></asp:ListItem>
                    <asp:ListItem Value="Free in the house"></asp:ListItem>
                    <asp:ListItem Value="In the garden"></asp:ListItem>
                    <asp:ListItem Value="Family/Friend"></asp:ListItem>
                    <asp:ListItem Value="Dog Day Care"></asp:ListItem>
                    <asp:ListItem Value="Other"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label26" runat="server" Text="Label">Will the dog have free access to the garden?</asp:Label>
                <div class="custom-control custom-radio custom-control-inline">
                    <asp:RadioButtonList ID="gardenAccess" runat="server">
                        <asp:ListItem class="custom-control-input" Value="Yes"></asp:ListItem>
                        <asp:ListItem class="custom-control-input" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="gardenAccess" ErrorMessage="Please choose an option" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />

                <asp:Label ID="Label27" runat="server" Text="Label">Where will you leave the dog when on holidays?</asp:Label>
                <asp:DropDownList ID="placeHolidays" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="Dog Hotel"></asp:ListItem>
                    <asp:ListItem Value="Take with you"></asp:ListItem>
                    <asp:ListItem Value="Family/Friend"></asp:ListItem>
                    <asp:ListItem Value="Other"></asp:ListItem>
                </asp:DropDownList><br>

                <asp:Label ID="Label28" runat="server" Text="Label">How often will you walk the dog?</asp:Label>
                <asp:DropDownList ID="walk" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="Once a day"></asp:ListItem>
                    <asp:ListItem Value="Twice a day"></asp:ListItem>
                    <asp:ListItem Value="Every other day"></asp:ListItem>
                    <asp:ListItem Value="Twice a week"></asp:ListItem>
                </asp:DropDownList><br>
                <br>

                <asp:Label ID="Label29" runat="server" Text="Will the weather interfere on you walking schedule?"></asp:Label>
                <div class="custom-control custom-radio custom-control-inline">
                    <asp:RadioButtonList ID="walkWeather" runat="server">
                        <asp:ListItem class="custom-control-input" Value="Yes"></asp:ListItem>
                        <asp:ListItem class="custom-control-input" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="walk" ErrorMessage="Please choose an option" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />

                <asp:Label ID="Label30" runat="server" Text="Label">Regarding training. You are looking for:</asp:Label>
                <asp:DropDownList ID="trained" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="House Trained only"></asp:ListItem>
                    <asp:ListItem Value="Training is not a must"></asp:ListItem>
                </asp:DropDownList><br>
                <br>

                <asp:Label ID="Label31" runat="server" Text="Label">Employment status:</asp:Label>
                <asp:DropDownList ID="employment" runat="server" CssClass="form-control" Width="280px">
                    <asp:ListItem Value="Full-time"></asp:ListItem>
                    <asp:ListItem Value="Part-time"></asp:ListItem>
                    <asp:ListItem Value="Student"></asp:ListItem>
                    <asp:ListItem Value="Work from home"></asp:ListItem>
                    <asp:ListItem Value="Unemployed"></asp:ListItem>
                    <asp:ListItem Value="Retired"></asp:ListItem>
                </asp:DropDownList><br>
                <br>

                <asp:Label ID="Label32" runat="server" Text="Label">Do you have holidays planned for the next 12 months?</asp:Label>
                <div class="custom-control custom-radio custom-control-inline">
                    <asp:RadioButtonList ID="holidayPlans" runat="server">
                        <asp:ListItem class="custom-control-input" Value="Yes"></asp:ListItem>
                        <asp:ListItem class="custom-control-input" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>


                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="holidayPlans" ErrorMessage="Please choose an option" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />


                    <asp:Button ID="Button1" runat="server" CssClass="button-12" Text="Submit" CommandName="Update" UseSubmitBehavior="true" OnClick="Button1_Click" />
                </div>
                <asp:SqlDataSource ID="findemail" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT &quot;email&quot; FROM &quot;APPLICANT&quot;"></asp:SqlDataSource>
                <br />


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>"
                    SelectCommand="SELECT * FROM &quot;APPLICANT&quot;"></asp:SqlDataSource>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:newId %>" ProviderName="<%$ ConnectionStrings:newId.ProviderName %>" SelectCommand="SELECT &quot;id&quot;, &quot;city&quot; FROM &quot;APPLICANT&quot;" UpdateCommand="UPDATE &quot;C##6P05&quot;.APPLICANT SET &quot;STATUS&quot;=:status, &quot;APPLICANT_NAME&quot;=:name, &quot;CITY&quot; = :city, &quot;ADDRESS&quot;=:address, &quot;POSTCODE&quot;=:postcode, &quot;PHONE_NUMBER&quot;=:phonenumber, &quot;ADDITIONAL_PHONE_NUMBER&quot;=:additional_phone_number, &quot;DATE_OF_BIRTH&quot;=:date_of_birth, &quot;PET_SEX&quot;=:pet_sex, &quot;PET_AGE&quot;=:pet_age, &quot;PET_SIZE&quot;=:pet_size, &quot;HEALTH_ISSUES&quot; =:health_issues, &quot;HOUSE_TYPE&quot; = :house_type, &quot;HOUSE_OWNERSHIP&quot; = :house_ownership, &quot;HOUSE_OCUPPANCY&quot; = :house_ocuppancy, &quot;HOUSE_CHILDREN&quot; =:house_children, &quot;HAS_GARDEN&quot; =:has_garden, &quot;IS_GARDEN_FENCED&quot; =:is_garden_fenced, &quot;CHILD_PLAN&quot; = :child_plan, &quot;HAS_CHILDREN_VISITING&quot; = :has_children_visiting, &quot;HAS_OTHER_PETS&quot; =:has_other_pets, &quot;HAS_EXPERIENCE&quot; = :has_experience, &quot;MAX_HOURS_ALONE&quot; = :max_hours_alone, &quot;PET_PLACE_ALONE&quot; =:pet_place_alone, &quot;HAS_GARDEN_ACCESS&quot; = :has_garden_access, &quot;WALK_SCHEDULE&quot; = :walk_schedule, &quot;PET_PLACE_HOLIDAYS&quot; =:pet_place_holidays, &quot;WEATHER_WALK_SCHEDULE&quot; = :weather_walk_schedule, &quot;EMPLOYMENT_STATUS&quot; = :employment_status, &quot;DEMANDS_HOUSE_TRAINED&quot; = :demands_house_trained, &quot;HAS_HOLIDAY_PLANS&quot; = :has_holiday_plans WHERE &quot;EMAIL&quot; =:email">
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="Status" Name="status" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="name" Name="name" PropertyName="Text" />
                        <asp:ControlParameter ControlID="adress" Name="address" PropertyName="Text" />
                        <asp:ControlParameter ControlID="postcode" Name="postcode" PropertyName="Text" />
                        <asp:ControlParameter ControlID="city" Name="city" PropertyName="Text" />
                        <asp:ControlParameter ControlID="phone" Name="phone_number" PropertyName="Text" />
                        <asp:ControlParameter ControlID="additionalPhone" Name="additional_phone_number" PropertyName="Text" />
                        <asp:ControlParameter ControlID="dob" Name="date_of_birth" DbType="Date" PropertyName="Text" />
                        <asp:ControlParameter ControlID="sex" Name="pet_sex" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="age" Name="pet_age" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="size" Name="pet_size" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="health_issues" DefaultValue="No" Name="health_issues" PropertyName="Text" />
                        <asp:ControlParameter ControlID="homeType" Name="house_type" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ownership" Name="house_ownership" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ocuppancy" Name="house_ocuppancy" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="childnumber" Name="house_children" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="garden" Name="has_garden" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="gerdenFence" Name="is_garden_fenced" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="kidsPlans" Name="child_plan" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="kidsVisiting" Name="has_children_visiting" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="otherPets" Name="has_other_pets" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="experience" Name="has_experience" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="timeAlone" Name="max_hours_alone" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="placeAlone" Name="pet_place_alone" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="gardenAccess" Name="has_garden_access" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="walk" Name="walk_schedule" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="placeHolidays" Name="pet_place_holidays" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="walkWeather" Name="weather_walk_schedule" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="employment" Name="employment_status" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="trained" Name="demands_house_trained" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="holidayPlans" Name="has_holiday_plans" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="email" Name="email" PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>


            </fieldset>
        </div>

    </div>


</asp:Content>

