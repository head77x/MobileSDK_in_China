using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// 필요한 경우, 본 Enum 에 필드를 추가 및 수정해서 사용 가능. 단, 해당 내용 수정시 서버도 함께 수정해야 함
/// </summary>
public enum MiguRankEnum { _Rank = 0, _UserID, _FaceType, _Name, _Score, _size };

/// <summary>
/// 랭킹 정보를 담을 기본 구조체 클래스
/// </summary>
public class MiguRankStruct
{
    /// <summary>
    /// 동일한 랭킹 데이터 관리를 위한 클래스
    /// </summary>
    public class MiguRankLinkedStruct
    {
        public Dictionary<MiguRankEnum, String> my_data;
        public MiguRankLinkedStruct next_node;

        /// <summary>
        /// 모두 초기화 시켜버리기
        /// </summary>
        public void Clear()
        {
            if (next_node != null)
                next_node.Clear();

            next_node = null;
            my_data = null;
        }

        public MiguRankLinkedStruct(Dictionary<MiguRankEnum, String> values)
        {
            my_data = values;
            next_node = null;
        }

        /// <summary>
        /// 랭킹 정보를 해당 리스트의 제일 끝에 추가함
        /// </summary>
        /// <param name="values"></param>
        public void AddDataToLastNode(Dictionary<MiguRankEnum, String> values)
        {
            if (next_node != null)
            {
                next_node.AddDataToLastNode(values);
                return;
            }

            next_node = new MiguRankLinkedStruct(values);
        }

        /// <summary>
        /// 다음 노드 얻기
        /// </summary>
        /// <returns></returns>
        public MiguRankLinkedStruct GetNextNode()
        {
            return next_node;
        }

        /// <summary>
        /// 최종 노드 얻기
        /// </summary>
        /// <returns></returns>
        public MiguRankLinkedStruct GetLastNode()
        {
            if (next_node != null)
                return next_node.GetLastNode();

            return this;
        }

        /// <summary>
        /// 현재 노드의 데이터 얻기
        /// </summary>
        /// <returns></returns>
        public Dictionary<MiguRankEnum, String> GetData()
        {
            return my_data;
        }
    }

    public Dictionary<int, MiguRankLinkedStruct> RankLists;
 
    private int m_FirstRank;

    public MiguRankStruct()
    {
        RankLists = new Dictionary<int, MiguRankLinkedStruct>();
    }

    /// <summary>
    /// 랭킹 리스트를 채우기 전에 클리어 할 것
    /// </summary>
    public void ClearRankInfo()
    {
        foreach (MiguRankLinkedStruct temp in RankLists.Values)
            temp.Clear();

        RankLists.Clear();

        m_FirstRank = -1;
    }

    /// <summary>
    /// 랭킹 정보를 하나씩 읽어와 RankLists 에 등록함
    /// </summary>
    /// <param name="json_data">랭킹 정보가 JSON Array 형태로 들어있는 객체</param>
    public void AddRankInfo(JSONObject json_data)
    {
        Dictionary<MiguRankEnum, String> data_struct = new Dictionary<MiguRankEnum,string>();

        for( int i = 0; i < (int)MiguRankEnum._size; i++ )
        {
            String key = ((MiguRankEnum)i).ToString();

            if ( json_data.HasField(key) )
            {
                data_struct[(MiguRankEnum)i] = json_data.GetString(json_data[key]);

//                Debug.Log((MiguRankEnum)i + ":" + data_struct[(MiguRankEnum)i]);
            }
        }

        int rank = int.Parse(data_struct[MiguRankEnum._Rank]);

        if ( !RankLists.ContainsKey(rank) )  // 랭킹 넣기
            RankLists[rank] = new MiguRankLinkedStruct(data_struct);
        else
            RankLists[rank].AddDataToLastNode(data_struct); // 동일한 랭킹이 있을 경우, 노드 뒤에 붙이기

        if (m_FirstRank == -1)
            m_FirstRank = rank;
    }

    /// <summary>
    /// 리스트의 시작 랭킹 정보 얻기
    /// </summary>
    /// <returns></returns>
    public int GetFirstRank()
    {
        return m_FirstRank;
    }

    /// <summary>
    /// 해당 랭킹의 데이터를 리스트로 얻기
    /// </summary>
    /// <param name="wanna_rank">얻으려는 인덱스</param>
    /// <returns>전체 데이터 리스트( 구조체 크기 * 동일한 랭킹 갯수)</returns>
    public ArrayList GetRankDataList(int rank)
    {
        if (!RankLists.ContainsKey(rank))
            return null;

        ArrayList temp = new ArrayList();

        MiguRankLinkedStruct linkedlist = RankLists[rank];

        while (linkedlist != null)
        {
            Dictionary<MiguRankEnum, String> data_struct = linkedlist.GetData();

            for (int i = 0; i < (int)MiguRankEnum._size; i++)
                temp.Add(data_struct[(MiguRankEnum)i]);

            linkedlist = linkedlist.GetNextNode();
        }

        return temp;
    }

    /// <summary>
    /// 랭킹 리스트를 원하는 랭킹부터 갯수만큼 얻어오기
    /// </summary>
    /// <param name="start_rank">랭킹 리스트 시작</param>
    /// <param name="count">원하는 갯수</param>
    /// <returns>원하는 갯수 만큼의 랭킹 리스트 * 랭킹 리스트 구조체 크기</returns>
    public ArrayList GetRankDataManyLists(int start_rank, int count)
    {
        ArrayList temp = new ArrayList();

        int total = 0;

        for (int cnt = start_rank; cnt < start_rank + count; cnt++)
        {
            if (!RankLists.ContainsKey(cnt))
                continue;

            MiguRankLinkedStruct linkedlist = RankLists[cnt];

            while (linkedlist != null)
            {
                Dictionary<MiguRankEnum, String> data_struct = linkedlist.GetData();

                for (int i = 0; i < (int)MiguRankEnum._size; i++)
                    temp.Add(data_struct[(MiguRankEnum)i]);

                linkedlist = linkedlist.GetNextNode();

                total++;

                if (total > count)
                    return temp;
            }
        }

        return temp;
    }

}

public class MiguRanking : MonoBehaviour
{
    static MiguRanking m_instance;
    public static MiguRanking instance
    {
        get
        {
            return m_instance;
        }
    }

    private bool Dirty = true;
    private MiguProcess RankingProcess;

    private MiguRankStruct m_LocalRank;
    private MiguRankStruct m_OnlineRank;

    public int My_Rank;

    void Start()
    {
        m_instance = this;

        Dirty = false;
        RankingProcess = MiguProcess._Nothing;

//        m_LocalRank = new MiguRankStruct();  // 로컬 랭킹은 추후 추가
        m_OnlineRank = new MiguRankStruct();
    }

    void Update()
    {
        if (Dirty)
            return;

    }

    /// <summary>
    /// 랭킹 리스트의 시작 랭킹 얻기
    /// </summary>
    /// <returns>리스트의 시작 랭킹</returns>
    public int GetFirstRank()
    {
        if (RankingProcess == MiguProcess._Success)
            return m_OnlineRank.GetFirstRank();

        return 1;
    }

    /// <summary>
    /// 해당 랭킹의 데이터를 리스트로 얻기
    /// </summary>
    /// <param name="wanna_rank">얻으려는 랭킹 정보</param>
    /// <returns>전체 데이터 리스트</returns>
    public ArrayList GetRankDataList(int wanna_rank)
    {
        if (RankingProcess == MiguProcess._Success)
            return m_OnlineRank.GetRankDataList(wanna_rank);

        return null;
    }

    /// <summary>
    /// 랭킹을 리스트로 얻기
    /// </summary>
    /// <param name="wanna_rank">원하는 랭킹</param>
    /// <param name="counts">얻을 갯수</param>
    /// <returns></returns>
    public ArrayList GetRankDataManyLists(int wanna_rank, int counts)
    {
        if (RankingProcess == MiguProcess._Success)
            return m_OnlineRank.GetRankDataManyLists(wanna_rank, counts);

        return null;
    }

    /// <summary>
    /// 현재 랭킹 얻는 과정
    /// </summary>
    /// <returns></returns>
    public MiguProcess GetRankProcess()
    {
        return RankingProcess;
    }

    /// <summary>
    /// 점수 저장 처리하면서 랭킹 얻기
    /// </summary>
    /// <param name="base_score">저장할 점수</param>
    /// <param name="rank_type">랭킹 종류(뚱팡에서는 전체, 스테이지 랭킹 등의 구분)</param>
    public void SetScore( Int64 base_score, int rank_type )
    {
        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/rank2.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetRankResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "1");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("deviceid", MiguSocial.instance.User_Identifier);
        param.form.AddField("score", base_score.ToString());
        param.form.AddField("ranktype", rank_type.ToString());

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + base_score.ToString() + rank_type.ToString() + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        RankingProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 랭킹 리스트 얻기
    /// </summary>
    /// <param name="origin_from_me">내 랭킹 기준으로 얻을지 여부(true 면, start_rank 는 - 로 시작 가능)</param>
    /// <param name="start_rank">얻기 시작할 랭킹</param>
    /// <param name="get_count">얻어올 랭킹 리스트 갯수</param>
    /// <param name="rank_type">랭킹 종류</param>
    public void GetRank(bool origin_from_me, int start_rank, int get_count, int rank_type)
    {
        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/rank2.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetRankResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "11");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("deviceid", MiguSocial.instance.User_Identifier);
        if (!origin_from_me)
            param.form.AddField("origin", "0");
        else
            param.form.AddField("origin", "1");

        param.form.AddField("start", start_rank.ToString());
        param.form.AddField("count", get_count.ToString());
        param.form.AddField("ranktype", rank_type.ToString());
        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + rank_type.ToString() + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        RankingProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 랭킹 리스트 얻기 콜백 함수
    /// </summary>
    /// <param name="param"></param>
    public void ReturnGetRankResult(WebSlaveParam param)
    {
        RankingProcess = MiguProcess._Failed;
        // 로그인 과정 중 네트워크 이상등의 문제 발생하면, 랭킹 리스트 얻기 실패
        if (param.return_error != null)
        {
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int rankresult = datas.GetValue(datas["stat"]);

        Debug.Log("Rank Result : " + rankresult + ":" + param.return_value);

        m_OnlineRank.ClearRankInfo();

        switch (rankresult)
        {
            case 1:   // Get Rank Success
                RankingProcess = MiguProcess._Success;

                My_Rank = datas.GetValue(datas["my_rank"]);
                int start_rank = datas.GetValue(datas["start_rank"]);
                int rankcounts = datas["ranklists"].Count;
                for (int i = 0; i < rankcounts; i++)
                    m_OnlineRank.AddRankInfo(datas["ranklists"][i]); // 각 랭킹을 하나씩 얻어와 저장
                break;
            default:   // Rank Failed
                Debug.Log(datas["message"]);
                break;
        }
    }

}
