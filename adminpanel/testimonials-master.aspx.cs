﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class adminpanel_testimonials_master : System.Web.UI.Page
{
    iClass c = new iClass();
    public string pgTitle;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            pgTitle = Request.QueryString["action"] == "new" ? "Add Testimonials" : "Edit Testimonials";
            btnSave.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnSave, null) + ";");
            btnDelete.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnDelete, null) + ";");
            btnCancel.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnCancel, null) + ";");

            if (!IsPostBack)
            {
                if (Request.QueryString["action"] != null)
                {
                    editinfo.Visible = true;
                    viewinfo.Visible = false;

                    if (Request.QueryString["action"] == "new")
                    {
                        btnSave.Text = "Save Info";
                        btnDelete.Visible = false;
                        //txtDate.Text = DateTime.Now.ToString("dd/MM/yyyy");
                    }
                    else
                    {
                        btnSave.Text = "Modify Info";
                        btnDelete.Visible = true;
                        GetData(Convert.ToInt32(Request.QueryString["id"]));
                    }
                }
                else
                {
                    editinfo.Visible = false;
                    viewinfo.Visible = true;
                    FillGrid();
                }
            }
            lblId.Visible = false;
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "Page_Load", ex.Message.ToString());
            return;
        }
    }


    private void FillGrid()
    {
        try
        {
            using (DataTable dtNws = c.GetDataTable("Select testId, testPerson, testPlace, testEmail, testOrgName From Testimonials Where delMark=0"))
            {
                gvTestimonials.DataSource = dtNws;
                gvTestimonials.DataBind();

                if (dtNws.Rows.Count > 0)
                {
                    gvTestimonials.UseAccessibleHeader = true;
                    gvTestimonials.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "FillGrid", ex.Message.ToString());
            return;
        }
    }

    protected void gvTestimonials_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litAnch = (Literal)e.Row.FindControl("litAnch");
                litAnch.Text = "<a href=\"testimonials-master.aspx?action=edit&id=" + e.Row.Cells[0].Text + "\"class=\"gAnch\" title=\"View/Edit\"></a>";


                //object status = c.GetReqData("Testimonials", "ApproveFlag", "TestId=" + e.Row.Cells[0].Text);

                //Literal litStatus = (Literal)e.Row.FindControl("litstatus");
                //switch (status.ToString())
                //{
                //    case "0":
                //        litStatus.Text = "<div class=\"ordNew\">Pending</div>";
                //        break;
                //    case "1":
                //        litStatus.Text = "<div class=\"ordDelivered\">Approved</div>";
                //        break;
                //}

            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "gvTestimonials_RowDataBound", ex.Message.ToString());
            return;
        }
    }


    public void GetAllControls(ControlCollection ctrs)
    {
        foreach (Control c in ctrs)
        {
            if (c is System.Web.UI.WebControls.TextBox)
            {
                TextBox tt = c as TextBox;
                tt.Text = tt.Text.Trim().Replace("'", "");
            }
            if (c.HasControls())
            {
                GetAllControls(c.Controls);
            }
        }
    }

    public void GetData(int TestiIdx)
    {
        try
        {
            using (DataTable dttesti = c.GetDataTable("select * from Testimonials where testId=" + TestiIdx))
            {
                if (dttesti.Rows.Count > 0)
                {
                    DataRow row = dttesti.Rows[0];
                    lblId.Text = TestiIdx.ToString();

                    txtPerNm.Text = row["testPerson"].ToString();
                    txtPlace.Text = row["testPlace"].ToString();
                    txtEmail.Text = row["testEmail"].ToString();
                    txtTesDesc.Text = row["testInfo"].ToString();
                    txtCompName.Text= row["testOrgName"].ToString();

                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "GetData", ex.Message.ToString());
            return;
        }
    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            GetAllControls(this.Controls);
            //Empty Validations
            if (txtPerNm.Text == "" || txtPlace.Text == "" || txtTesDesc.Text == "" || txtCompName.Text=="")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * marked fields are mandatory');", true);
                return;
            }

            int maxId = lblId.Text == "[New]" ? c.NextId("Testimonials", "testId") : Convert.ToInt32(lblId.Text);

            //Insert Update data
            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert into Testimonials(testId, testInfo, testPerson, testOrgName, testPlace, testEmail, delMark)Values(" + maxId + ", '" + txtTesDesc.Text + "', '" + txtPerNm.Text + "', '" + txtCompName.Text + "', '" + txtPlace.Text + "', '" + txtEmail.Text + "', 0)");

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Testimonials  Added');", true);
            }
            else
            {
                c.ExecuteQuery("Update Testimonials set testPerson='" + txtPerNm.Text + "', testEmail='" + txtEmail.Text + "', testPlace='" + txtPlace.Text + "', testInfo='" + txtTesDesc.Text + "', testOrgName='"+txtCompName.Text+"' where testId=" + maxId);

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Testimonials  Updated');", true);
            }

            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('testimonials-master.aspx', 2000);", true);

            txtEmail.Text = txtPerNm.Text = txtPlace.Text = txtTesDesc.Text = txtCompName.Text="";

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSave_Click", ex.Message.ToString());
            return;
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            c.ExecuteQuery("update Testimonials set delMark=1 where testId=" + Request.QueryString["id"]);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Testimonials Deleted');", true);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('testimonials-master.aspx', 2000);", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnDelete_Click", ex.Message.ToString());
            return;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("testimonials-master.aspx");
    }


}