using UnityEngine;
using System;
using System.Collections;

public class MiguDataMan 
{
    static MiguDataMan m_instance = null;
    public static MiguDataMan instance
    {
        get
        {
            if (m_instance == null)
                m_instance = new MiguDataMan();

            return m_instance;
        }
    }

    public MiguDataMan()
    {

    }

    public void InitializeDataFromServer()
    {
        Debug.Log("Data loaded from server.");

        PlayerPrefs.SetInt("ReceiveRookieGift", MiguSocial.instance.GetIntValue("ReceiveRookieGift", LocalOrOnline._Both));
        PlayerPrefs.SetInt("ClearLevel", MiguSocial.instance.GetIntValue("ClearLevel", LocalOrOnline._Both));
        PlayerPrefs.SetInt("CurPlayLevel", MiguSocial.instance.GetIntValue("CurPlayLevel", LocalOrOnline._Both));
        PlayerPrefs.SetInt("Ruby", MiguSocial.instance.GetIntValue("Ruby", LocalOrOnline._Both));
        PlayerPrefs.SetInt("GoldPinChanged", MiguSocial.instance.GetIntValue("GoldPinChanged", LocalOrOnline._Both));
        PlayerPrefs.SetInt("GoldPinNumber", MiguSocial.instance.GetIntValue("GoldPinNumber", LocalOrOnline._Both));
        PlayerPrefs.SetInt("LockCount", MiguSocial.instance.GetIntValue("LockCount", LocalOrOnline._Both));
        PlayerPrefs.SetString("sdata", MiguSocial.instance.GetValue("sdata", LocalOrOnline._Both));

        PlayerPrefs.SetInt("ITEM0", MiguSocial.instance.GetIntValue("ITEM0", LocalOrOnline._Both));
        PlayerPrefs.SetInt("ITEM1", MiguSocial.instance.GetIntValue("ITEM1", LocalOrOnline._Both));
        PlayerPrefs.SetInt("ITEM2", MiguSocial.instance.GetIntValue("ITEM2", LocalOrOnline._Both));
        PlayerPrefs.SetInt("ITEM3", MiguSocial.instance.GetIntValue("ITEM3", LocalOrOnline._Both));
        PlayerPrefs.SetInt("ITEM4", MiguSocial.instance.GetIntValue("ITEM4", LocalOrOnline._Both));
        PlayerPrefs.SetInt("ITEM5", MiguSocial.instance.GetIntValue("ITEM5", LocalOrOnline._Both));
        PlayerPrefs.SetInt("ITEM6", MiguSocial.instance.GetIntValue("ITEM6", LocalOrOnline._Both));
        PlayerPrefs.SetInt("ITEM7", MiguSocial.instance.GetIntValue("ITEM7", LocalOrOnline._Both));


        String total = "";
        total = MiguSocial.instance.GetValue("stage_whole", LocalOrOnline._Both);

        if (total.Length > 1)
        {
            String[] vals = total.Split('`');

            for (int i = 0; i < vals.Length; i += 2)
                PlayerPrefs.SetInt("stage" + vals[i], int.Parse(vals[i + 1]));
        }
    }

    public void SaveToServer()
    {
        Debug.Log("Not here???");
        MiguSocial.instance.TryToSaveDataToServer("nothing", "nothing", 0);
    }

}
