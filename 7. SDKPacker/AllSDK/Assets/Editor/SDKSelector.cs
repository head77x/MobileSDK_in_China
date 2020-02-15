using UnityEditor;
using UnityEngine;
using System.Collections;
using System;
using System.IO;

public class SDKSelector : MonoBehaviour 
{
    [MenuItem("China Billing Selector/China Mobile MM Platform")]
    static void Select_MM_Platform()
    {
        String checkfile = Application.dataPath + "\\Plugins\\Android\\AddedSDKFiles.txt";

        if (File.Exists(checkfile) == true)
        {
            String filenames = File.ReadAllText(checkfile);

            JSONObject namedatas = new JSONObject(filenames);
        }

        String checkdir = Application.dataPath + "\\CMSDK_Packs\\CMMM";
        String makedir = Application.dataPath + "\\Plugins\\Android\\";

        String[] dirs = Directory.GetDirectories(checkdir);

        foreach (String dir in dirs)
        {
            String temp = dir.Replace(checkdir, "");

            Debug.Log(temp);

            Directory.CreateDirectory(makedir + temp);

            String[] files = Directory.GetFiles(dir);

            foreach (String whatfile in files)
            {
                String tempfile = whatfile.Replace(dir, "");

                Debug.Log(whatfile + ":" + tempfile);

                File.Copy(whatfile, makedir + temp + tempfile); 
            }
        }


    }
}
