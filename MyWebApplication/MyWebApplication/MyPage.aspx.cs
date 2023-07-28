using System;
using System.Collections.Generic;
using System.Diagnostics.Tracing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApplication
{
    public partial class MyPage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEvent_Click(object sender, EventArgs e)
        {

        }
    }

    public class MyEvent
    {
        public string EventName
        {
            get;
            private set;
        }
        public string EventDate
        {
            get;
            private set;
        }

        public MyEvent(string eventName, DateTime eventDate)
        {
            EventName = eventName;
            EventDate = eventDate.ToShortDateString();
        }
    }
}