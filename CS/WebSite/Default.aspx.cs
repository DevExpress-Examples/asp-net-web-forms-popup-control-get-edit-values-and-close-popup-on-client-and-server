using System;
public partial class _Default : System.Web.UI.Page {
    protected void btnServer_Click(object sender, EventArgs e) {
        popup.ShowOnPageLoad = false;
        string startUpScript = string.Format("ShowInfo('Server', '{0}');", textBox.Text);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);
    }
}
