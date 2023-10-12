using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;
public partial class adminpanel_case_study_photos : System.Web.UI.Page
{
    iClass c = new iClass();
    public string photoMarkup;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                if (Request.QueryString["caseId"] != null)
                {
                    ddrCasePhotos.SelectedValue = Request.QueryString["caseId"].ToString();
                    GetCasePhotos(Convert.ToInt32(Request.QueryString["caseId"]));
                }
                c.FillComboBox("csTitle", "csId", "CaseStudy", "", "csTitle", 0, ddrCasePhotos);
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Error Occoured while processing', type: 'error'});", true);
                return;
            }
        }
        if (Request.QueryString["id"] != null)
        {
            try
            {
                ddrCasePhotos.SelectedValue = c.GetReqData("CaseStudyPhotos", "csId", "cspId=" + Convert.ToInt32(Request.QueryString["id"])).ToString();
                c.ExecuteQuery("Delete From CaseStudyPhotos Where cspId=" + Convert.ToInt32(Request.QueryString["id"]));
                GetCasePhotos(Convert.ToInt32(ddrCasePhotos.SelectedValue));
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myJsFunction", "waitAndMove('case-study-photos.aspx', 1000);", true);


                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Image  Updated');", true);

                //errMsg = c.ErrNotification(1, "Photo c");
                //return;
            }
            catch (Exception)
            {

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Record does not exist');", true);
                return;
                //errMsg = c.ErrNotification(3, "Record does not exist");
                //return;
            }
        }
    }

    protected void ddrCasePhotos_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddrCasePhotos.SelectedIndex != 0)
        {
            GetCasePhotos(Convert.ToInt32(ddrCasePhotos.SelectedValue));
        }
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddrCasePhotos.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Select Case Title to add photos');", true);
                return;

                //errMsg = c.ErrNotification(2, "Select Case Title to add photos");
                //return;
            }
            if (fuImage.HasFile)
            {
                string fExt = Path.GetExtension(fuImage.FileName).ToString().ToLower();
                if (fExt == ".jpg" || fExt == ".jpeg" || fExt == ".png" || fExt == ".gif")
                {
                    int casePhotoId = c.NextId("CaseStudyPhotos", "cspId");
                    string imgName = "case_photo" + casePhotoId + fExt;
                    c.ExecuteQuery("Insert Into CaseStudyPhotos ( cspId, csImage, csId) Values (" + casePhotoId + ", '" + imgName + "', " + Convert.ToInt32(ddrCasePhotos.SelectedValue) + ")");
                    ImageUploadProcess(imgName);

                   // errMsg = c.ErrNotification(1, "Image uploaded");

                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Image  Updated');", true);

                    GetCasePhotos(Convert.ToInt32(ddrCasePhotos.SelectedValue));

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Only .jpg, .jpeg, .gif or .png files are allowed');", true);
                    return;
                    //errMsg = c.ErrNotification(2, "Only .jpg, .jpeg, .gif or .png files are allowed");
                    //return;
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Select image to upload');", true);
                return;
                //errMsg = c.ErrNotification(2, "Select image to upload");
                //return;
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSave_Click", ex.Message.ToString());
            return;
        }
    }

    private void ImageUploadProcess(string imgName)
    {
        try
        {
            string origImgPath = "~/upload/casePhotos/original/";
            string thumbImgPath = "~/upload/casePhotos/thumb/";
            string normalImgPath = "~/upload/casePhotos/";

            fuImage.SaveAs(Server.MapPath(origImgPath) + imgName);
            c.ImageOptimizer(imgName, origImgPath, normalImgPath, 700, false);
            c.CenterCropImage(imgName, normalImgPath, thumbImgPath, 400, 400);

            File.Delete(Server.MapPath(origImgPath) + imgName);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSave_Click", ex.Message.ToString());
            return;
        }
    }

    private void GetCasePhotos(int photoIdX)
    {
        try
        {
            string rootPath = c.ReturnHttp();
            DataTable dtPhotos = new DataTable();
            dtPhotos = c.GetDataTable("Select * From CaseStudyPhotos Where csId=" + photoIdX);

            if (dtPhotos.Rows.Count > 0)
            {
                StringBuilder strMarkup = new StringBuilder();
                foreach (DataRow row in dtPhotos.Rows)
                {
                    strMarkup.Append("<div class=\"imgBox\">");
                    strMarkup.Append("<div class=\"pad-5\">");
                    strMarkup.Append("<div class=\"border1\">");
                    strMarkup.Append("<div class=\"pad-5\">");
                    strMarkup.Append("<div class=\"imgContainer\">");
                    strMarkup.Append("<img src=\"" + rootPath + "upload/casePhotos/thumb/" + row["csImage"] + "\" class=\"w100\" />");
                    strMarkup.Append("</div>");
                    strMarkup.Append("</div>");
                    strMarkup.Append("</div>");
                    strMarkup.Append("</div>");
                    strMarkup.Append("<a href=\"case-study-photos.aspx?id=" + row["cspId"] + "\" title=\"Delete Photo\"  class=\"closeAnch\"></a>");
                    strMarkup.Append("</div>");
                }

                photoMarkup = strMarkup.ToString();
            }
            else
            {
                photoMarkup = "No photos added for this Case";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSave_Click", ex.Message.ToString());
            return;
        }
    }

}