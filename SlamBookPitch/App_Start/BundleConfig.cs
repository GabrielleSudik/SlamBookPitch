using System.Web;
using System.Web.Optimization;

namespace SlamBookPitch
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-byGS.js"));
            //you tried substituting your file for the original {version} in that last line.
            //didn't work.

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*", "~/Scripts/jquery-byGS.js"));
            //you just tried adding it at the end there. nothing doing.

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            //this next one is my attempt to add my own js:
            //you did something similar before, in travel project. check that if this doesn't work.
            //bundles.Add(new ScriptBundle("~/bundles/jquery-byGS").Include(
            //"~/Scripts/jquery-byGS.js"));
            //that didn't work. try just dragging the new file over here.
            //nope lol.



             bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));
        }
    }
}
