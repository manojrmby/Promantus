using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace Promantus.App_Start
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            //bundles.Add(new ScriptBundle("~/bundles/scripts").IncludeDirectory("~/Scripts/", "*.js", true));
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                "~/Scripts/jquery-3.4.1.min.js",
                "~/Scripts/jquery-ui.js",
                "~/Scripts/jquery-ui.min.js",
                 "~/Scripts/bootstrap.min.js"

                ));

            ScriptBundle Poper = new ScriptBundle("~/bundles/Poper");
            Poper.Include("~/Scripts/popper.min.js","~/Scripts/tokenize2.js");
            bundles.Add(Poper);
            bundles.Add(new StyleBundle("~/bundles/css").Include(
                                                   "~/styles/bootstrap.min.css",
                                                   "~/styles/bootstrap-glyphicons.css",
                                                   "~/styles/CustomStyleSheet.css",
                                                   "~/styles/tokenize2.css"
                                               ));
            //ScriptBundle scriptBndl = new ScriptBundle("~/bundles/bootstrap");


            ////use Include() method to add all the script files with their paths 
            //scriptBndl.Include(
            //                    "~/Scripts/bootstrap.js",
            //                    "~/Scripts/respond.js"
            //                  );
            //bundles.Add(scriptBndl);

            BundleTable.EnableOptimizations = true;
        }
    }
}