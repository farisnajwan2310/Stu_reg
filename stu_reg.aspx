<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="stu_reg.aspx.cs" Inherits="student_Registration.stu_reg" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main-content">
        <section id="wrappper">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        <div class="col-md-6 col-md-offset-2"> 
                            <h1>Individual Registration </h1>
                        </div>
                    </header>

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociateControlID="txtStdID"><b>Student ID</b></asp:Label><br />
                                    <asp:TextBox runat="server" required="required" Enabled="true" TextMode="Number" ID="txtStdID" class="form-control input-sm" placeholder="Student ID"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociateControlID="txtStdname"><b>Student Name</b></asp:Label><br />
                                    <asp:TextBox runat="server"  Enabled="true" ID="txtStdname" class="form-control input-sm" placeholder="Student Name"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociateControlID="txtfname"><b>Father Name</b></asp:Label><br />
                                    <asp:TextBox runat="server"  Enabled="true" ID="txtfname" class="form-control input-sm" placeholder="Father Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociateControlID="txtdob"><b>DOB</b></asp:Label><br />
                                    <asp:TextBox runat="server" ID="txtdob" Enabled="true" TextMode="Date" class="form-control input-sm" placeholder="DOB"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociateControlID="txtprogram"><b>Program</b></asp:Label> <br />
                                    <asp:TextBox runat="server" Enabled="true" ID="txtprogram" class="form-control input-sm" placeholder="Program"></asp:TextBox>
                                </div>
                            </div>
                        </div> 

                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociateControlID="txtregion"><b>Region</b></asp:Label><br />
                                    <asp:DropDownList runat="server" ID="txtregion" CssClass="form-control input-sm ">
                                        <asp:ListItem Text="Pakistan"/>
                                        <asp:ListItem Text="Iran"/>
                                        <asp:ListItem Text="Iraq"/>
                                        <asp:ListItem Text="Turkey"/>
                                        <asp:ListItem Text="India"/>
                                        <asp:ListItem Text="China"/>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="txtaddress"><b>Address</b></asp:Label><br />
                                    <asp:TextBox runat="server" Enabled="true" ID="txtaddress" class="form-control input-sm" placeholder="Address"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label runat="server"><b>Cell No</b></asp:Label><br />
                                    <asp:TextBox runat="server" Enabled="true" TextMode="Number" ID="txtcell" class="form-control input-sm" placeholder="Cell Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label AssociateControlID="txtgender" runat="server"><b>Gender</b></asp:Label><br />
                                    <asp:RadioButtonList class="form-group" ID="txtgender" runat="server">
                                        <asp:ListItem Text="Male" />
                                        <asp:ListItem Text="Female" />
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">
                                <asp:Button Text="Save" ID="btnsave" OnClick="btnsave_Click" CssClass="btn btn-primary" Width="170px" runat="server" />
                                <asp:Button Text="Update" ID="btnupdate" OnClick="btnupdate_Click" CssClass="btn btn-info" Width="170px" runat="server" />
                                <asp:Button Text="Delete" ID="btndelete" OnClick="btndelete_Click" CssClass="btn btn-danger" Width="170px" runat="server" OnClientClick="return confirm('R u sure?');" />
                                <asp:Label Text="" ForeColor="Green" ID="lblmessage" CssClass="label label-success" runat="server" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="table-responsive">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="std_id" DataSourceID="SqlDataSource1" Width="889px"  AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" >
                                            <Columns>
                                                <asp:BoundField DataField="std_id" HeaderText="std_id" ReadOnly="True" SortExpression="std_id" />
                                                <asp:BoundField DataField="std_name" HeaderText="std_name" SortExpression="std_name" />
                                                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                                                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                                <asp:BoundField DataField="s_program" HeaderText="s_program" SortExpression="s_program" />
                                                <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                                <asp:BoundField DataField="cell_no" HeaderText="cell_no" SortExpression="cell_no" />
                                                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />                                                                        
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDBConnectionString %>" SelectCommand="SELECT * FROM [tblstudent] order by std_name" UpdateCommand="UPDATE [tblstudent] set[std_name]=@std_name, [fname]=@fname, [dob]=@dob,
                                            [s_program]=@s_program, [region]=@region, [address]=@address, [cell_no]=@cell_no, [gender]=@gender where [std_id]=@std_id" DeleteCommand="DELETE from [tblstudent] where [std_id]=@std_id" InsertCommandType="Text"></asp:SqlDataSource>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </section>

            </div>
        </section>
    </section>

</asp:Content>
