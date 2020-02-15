using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/*
/// <summary>
/// 프로젝트에서는 본 Enum 에 필드를 추가 및 수정해서 사용 가능
/// </summary>
public enum UserInfoEnum 
{ 
    _UserIdx = 0, 
    _PlayerNickName, 
    _PlayerID, 
    _PlayerFaceType, 
    _PlayerBirthDay, 
    _PlayerAge, 
    _PlayerBloodType, 
    _Gold, 
    _Ruby, 
    _Item, 
    _ClearLevel,
    _StageState,
    _StarState,
    _RunwayCount,
    _LockCount,
    _ShopInfo,
    _CardCT,
    _SwimCT,
    _BoxCT,
    _AttendCount,
    _LastAttend,
    _review,
    _FirstBuyData,
    _CurPlayLevel,
    _HelpQuestClearCount,
    _HelpQuestTodayCount,
    _HelpQuestLastDate,
    _HelpQuestLastReward,
    _size 
};
*/

public class UserInformation 
{
/*  // 뚱팡에서는 로컬 유저 정보와 온라인 상의 유저 정보를 분리해서 사용하므로, 인스턴스화 사용 안함
    static UserInformation m_instance;
    public static UserInformation instance
    {
        get
        {
            if (m_instance == null)
                m_instance = new UserInformation();

            return m_instance;
        }
    }
*/
    

    private Dictionary<String, String> m_DataStruct;

    public UserInformation()
    {
        m_DataStruct = new Dictionary<String, String>();
    }

    /// <summary>
    /// 유저 정보 중 특정 값 저장
    /// </summary>
    /// <param name="key">정보 필드</param>
    /// <param name="value">수정할 값</param>
    public void SetValue(String key, String value)
    {
        m_DataStruct[key] = value;
    }

    /// <summary>
    /// 해당 키 자체 정보가 있는지 체크
    /// </summary>
    /// <param name="key"></param>
    /// <returns></returns>
    public bool CheckKey(String key)
    {
        return m_DataStruct.ContainsKey(key);
    }

    /// <summary>
    /// 유저 정보 중 특정 값 얻기
    /// </summary>
    /// <param name="key">정보 필드</param>
    /// <returns>현재 값</returns>
    public String GetValue(String key)
    {
        if (!m_DataStruct.ContainsKey(key))
            return "";

        return m_DataStruct[key];
    }

    /// <summary>
    /// 해당 유저 정보를 JSON 문자열로 변환
    /// </summary>
    /// <returns>변환된 문자열</returns>
    public String ToJSONString()
    {
        String result = "";

        result += "{ ";

        int cnter = 0;
        foreach (String keys in m_DataStruct.Keys)
        {
            if ( cnter > 0 )
                result += ", ";
            result += "\"" + keys + "\" : \"" + m_DataStruct[keys] + "\" ";
            cnter++;
        }

        result += "}";

        return result;
    }

    /// <summary>
    /// JSON 문자열에서 해당 유저 정보를 읽어와서 값 셋팅
    /// </summary>
    /// <param name="jsonstr">유저 정보가 들어있는 값</param>
    public void FillFromJSONString(JSONObject datas)
    {
        // 만약 최초 삽입된 정보라면, 각 키 별 값을 읽을 필요 없이 리턴
        if (datas.HasField("nothing") || datas.Count < 2)
        {
            Debug.Log("nothing!!!");
            return;
        }

        foreach ( String key in datas.keys )
        {
            m_DataStruct[key] = datas.GetString(datas[key]);
        }
    }

    /// <summary>
    /// 두 개의 문자열을 합쳐서 byte[] 를 리턴함
    /// </summary>
    /// <param name="source">소스 문자열</param>
    /// <param name="keys">암호화 문자열</param>
    /// <param name="where">몇번째 부터 시작할지</param>
    /// <returns></returns>
    public byte[] StringEncrypter(String source, String keys, int where)
    {
        byte[] sourcebyte = new System.Text.UTF8Encoding().GetBytes(source);
        byte[] keybyte = new System.Text.UTF8Encoding().GetBytes(keys);

        for (int i = 0; i < sourcebyte.Length; i++)
            sourcebyte[i] = (byte)((int)sourcebyte[i] ^ (int)keybyte[(i + where) % keybyte.Length]);

        return sourcebyte;
    }

    /// <summary>
    /// byte[] 형태로 암호화된 내용을 정상적인 스트링으로 암호해제
    /// </summary>
    /// <param name="source">byte[] 형태로 암호화된 값</param>
    /// <param name="keys">암호 키 문자열</param>
    /// <param name="where">몇번째 부터 시작인지 여부</param>
    /// <returns>암호 해제된 문자열</returns>
    public String StringDecrypter(byte[] source, String keys, int where)
    {
        byte[] keybyte = new System.Text.UTF8Encoding().GetBytes(keys);

        for (int i = 0; i < source.Length; i++)
            source[i] = (byte)((int)source[i] ^ (int)keybyte[(i + where) % keybyte.Length]);

        return System.Text.Encoding.UTF8.GetString(source);
    }


}
