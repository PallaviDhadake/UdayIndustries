using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class adminpanel_career_master : System.Web.UI.Page
{
    iClass c = new iClass();
    public string pgTitle, Resume, rootPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            pgTitle = Request.QueryString["action"] == "new" ? "Add Record" : "Edit Record";
            btnSave.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnSave, null) + ";");
            btnDelete.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnDelete, null) + ";");
            btnCancel.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnCancel, null) + ";");

            if (!IsPostBack)
            {
                if (Request.QueryString["action"] != null)
                {
                    editCareer.Visible = true;
                    viewCareer.Visible = false;

                    if (Request.QueryString["action"] == "new")
                    {
                        btnSave.Text = "Save Info";
                        btnDelete.Visible = false;
                        
                    }
                    else
                    {
                        btnSave.Text = "Modify Info";
                        btnDelete.Visible = true;
                        GetCareersData(Convert.ToInt32(Request.QueryString["id"]));
                    }
                }
                else
                {
                    editCareer.Visible = false;
                    viewCareer.Visible = true;
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
            using (DataTable dtNws = c.GetDataTable("Select CareerId, Convert(varchar(20), Date, 103) as Date, ApplicantName, ApplicantEmail, ApplicantMobile, Resume From CareersData Where DelMark=0 Order By Date DESC"))
            {
                gvCareer.DataSource = dtNws;
                gvCareer.DataBind();

                if (dtNws.Rows.Count > 0)
                {
                    gvCareer.UseAccessibleHeader = true;
                    gvCareer.HeaderRow.TableSection = TableRowSection.TableHeader;
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

 

    protected void gvCareer_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litAnch = (Literal)e.Row.FindControl("litAnch");
                litAnch.Text = "<a href=\"career-master.aspx?action=edit&id=" + e.Row.Cells[0].Text + "\"class=\"gAnch\" title=\"View/Edit\"></a>";


                Literal litResume = (Literal)e.Row.FindControl("litResume");
                litResume.Text = "<a href=\"" + Master.rootPath + "upload/Resume/" + e.Row.Cells[1].Text + "\"class=\"pdfLink\" title=\"View/Edit\">View Resume</a>";

            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "gvNews_RowDataBound", ex.Message.ToString());
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


    public void GetCareersData(int CareerIdx)
    {
        try
        {
            using (DataTable dtNws = c.GetDataTable("select * from CareersData where CareerId=" + CareerIdx))
            {
                if (dtNws.Rows.Count > 0)
                {
                    DataRow row = dtNws.Rows[0];
                    lblId.Text = CareerIdx.ToString();
                    //txtDate.Text = Convert.ToDateTime(row["newsDate"]).ToString("dd/MM/yyyy");
                    txtEmail.Text = row["ApplicantEmail"].ToString();
                    txtMobile.Text = row["ApplicantMobile"].ToString();
                    txtName.Text = row["ApplicantName"].ToString();
                    txtExp.Text = row["Experience"].ToString();

                    if (row["Resume"] != DBNull.Value && row["Resume"] != null && row["Resume"].ToString() != "" && row["Resume"].ToString() != "no-photo.png")
                    {
                        //Resume = "<img src=\"" + Master.rootPath + "upload/news/thumb/" + row["Resume"].ToString() + "\" width=\"200\" />";

                        Resume = "<a href=\"" + Master.rootPath + "upload/Resume/" + row["Resume"].ToString() + "\" width=\"200\" class=\"pdfLink\">View Resume</a>";

                    }
                  

                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "GetNewsData", ex.Message.ToString());
            return;
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            GetAllControls(this.Controls);
            //Empty Validations
            if (txtEmail.Text == "" || txtMobile.Text == "" || txtName.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * Fields are mandatory');", true);
                return;
            }

            if (c.EmailAddressCheck(txtEmail.Text) == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter Valid Email Address');", true);
                return;
            }
            if (c.ValidateMobile(txtMobile.Text) == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter Valid Mobile No.');", true);
                return;
            }


            //Insert Update data
            int maxId = lblId.Text == "[New]" ? c.NextId("CareersData", "CareerId") : Convert.ToInt32(lblId.Text);

            string Resume = "";
            if (fuReume.HasFile)
            {
                string fExt = Path.GetExtension(fuReume.FileName).ToString().ToLower();

                if (fExt == ".pdf")
                {
                    Resume = "Resume-" + maxId + DateTime.Now.ToString("ddMMyyyyHHmmss") + fExt;
                    fuReume.SaveAs(Server.MapPath("~/upload/Resume/") + Resume);
                    //ImageUploadProcess(nwsPhoto);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Only .pdf files are allowed');", true);
                    return;

                }
            }
            else if (lblId.Text=="[New]")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Select resume to upload');", true);
                return;
            }


            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert into CareersData(CareerId, Date, ApplicantName, ApplicantEmail, ApplicantMobile, Experience, DelMark)Values(" + maxId + ", '" + DateTime.Now + "', '" + txtName.Text + "', '" + txtEmail.Text + "',  '" + txtMobile.Text + "', "+ txtExp.Text +", 0)");
                if (fuReume.HasFile)
                {
                    c.ExecuteQuery("Update CareersData Set Resume='" + Resume + "' where CareerId=" + maxId + "");
                }

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Record  Added');", true);
            }

            else
            {
                c.ExecuteQuery("Update CareersData set Date='" + DateTime.Now + "', ApplicantName='" + txtName.Text + "', ApplicantEmail='" + txtEmail.Text + "', ApplicantMobile='" + txtMobile.Text + "', Experience="+ txtExp.Text + " where CareerId=" + maxId);

                if (fuReume.HasFile)
                {
                    c.ExecuteQuery("Update CareersData Set Resume='" + Resume + "' where CareerId=" + maxId + "");
                }

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Record  Updated');", true);
            }
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('career-master.aspx', 2000);", true);

            txtEmail.Text = txtExp.Text = txtMobile.Text = txtName.Text="";
            fuReume.Visible = false;

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
            c.ExecuteQuery("update CareersData set DelMark=1 where CareerId=" + Request.QueryString["id"]);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Record Deleted');", true);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('career-master.aspx', 2000);", true);
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
        Response.Redirect("career-master.aspx");
    }

}