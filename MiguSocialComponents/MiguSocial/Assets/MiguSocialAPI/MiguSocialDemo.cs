using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public class MiguSocialDemo : MonoBehaviour 
{
    String id;
    String MyScore = "0";
    String MyCoupon= "";
    String UserNameString = "";

    void OnGUI()
    {
        if (MiguSocial.instance != null)
        {
            GUILayout.BeginVertical();

            if (GUILayout.Button("서버 시간 얻기"))
            {
                MiguSocial.instance.GetServerTime();
            }

            GUILayout.Label("내 장치 구분자");
            GUILayout.Label(MiguSocial.instance.User_Identifier);

            if (GUILayout.Button("Login 실행"))
                MiguSocial.instance.TryToLogin("nothing", "nothing", 0);

            GUILayout.Label("CheckingProcess :" + MiguSocial.instance.GetCheckingProcess().ToString());
            GUILayout.Label("LoginProcess :" + MiguSocial.instance.GetLoginProcess().ToString());

            if (MiguSocial.instance.GetLoginProcess() == MiguProcess._Success)
            {
                if ( MiguSocial.instance.GetAccountUserNameStatus() )
                {
                    GUILayout.Label("유저 이름 :" + MiguSocial.instance.GetAccountUserName());
                }
                else
                if (MiguSocial.instance.GetSetNameProcess() != MiguProcess._Processing)
                {
                    GUILayout.Label("현재 유저 이름이 셋팅되어 있지 않습니다. 유저 이름 셋팅해주세요.");

                    UserNameString = GUILayout.TextField(UserNameString);

                    if (GUILayout.Button("유저 이름 셋팅하기"))
                        MiguSocial.instance.TryToSetUserName(UserNameString);
                }

/* 유저 정보에 접근하는 방법 예
                for (int i = 0; i < (int)UserInfoEnum._size; i++)
                {
                    GUILayout.Label(((UserInfoEnum)i).ToString());
                    String temp = MiguSocial.instance.GetValue((UserInfoEnum)i, LocalOrOnline._Both);
                    temp = GUILayout.TextField(temp);
                    MiguSocial.instance.SetValue((UserInfoEnum)i, temp, LocalOrOnline._Both);
                }
*/
                if (GUILayout.Button("Save 실행"))
                    MiguSocial.instance.TryToSaveDataToServer("nothing", "nothing", 0);

                if (MiguRanking.instance != null)
                {
                    GUILayout.Label("랭킹 테스트용 점수");
                    MyScore = GUILayout.TextField(MyScore);

                    if (GUILayout.Button("랭킹 처리"))
                    {
                        MiguRanking.instance.SetScore(int.Parse(MyScore), 0); // 점수 저장 후 랭킹 얻기
//                        MiguRanking.instance.GetRank(true, -2, 10, 0);  // 내 랭킹 기준으로 상위 2단계 부터 얻기
//                       MiguRanking.instance.GetRank(false, 0, 10, 0);  // 랭킹 1위부터 10위까지 얻기
                    }

                    if (MiguRanking.instance.GetRankProcess() == MiguProcess._Success)
                    {
//                        GUILayout.Label(MiguRanking.instance.GetValue(3, MiguRankEnum._Score));     // 랭킹 리스트 중 3위의 점수 얻기
                        ArrayList temp = MiguRanking.instance.GetRankDataList(3);

                        if ( temp != null )
                        {
                            String result = "";
                            foreach(String val in temp)
                            {
                                result += val + " : ";
                            }

                            GUILayout.Label(result);
                        }
                    }
                }

                if ( MiguFriends.instance != null )
                {
                    if ( MiguFriends.instance.GetUpdated() )
                    {
                        MiguFriendStruct fr = MiguFriends.instance.GetMyFriendList();
                        if (fr != null)
                        {
                            String friendinfo = "";

                            foreach (Dictionary<MiguFriendEnum, String> lists in fr.FriendLists)
                            {
                                friendinfo += lists[MiguFriendEnum._UserID] + ",";
                            }

                            GUILayout.Label(friendinfo);
                        }

                        if (GUILayout.Button("추천 친구 리스트 보기"))
                        {
                            MiguFriends.instance.TryToGetSuggestFriendList(10);
                        }

                        if ( MiguFriends.instance.GetUpdatedForSuggestFriend())
                        {
                            MiguFriendStruct temp = MiguFriends.instance.GetSuggestFriendList();
                            if ( temp != null )
                            {
                                String friendinfo = "";

                                foreach( Dictionary<MiguFriendEnum, String> lists in temp.FriendLists )
                                {
                                    friendinfo += lists[MiguFriendEnum._UserID] + ",";
                                }

                                GUILayout.Label(friendinfo);

                                if ( GUILayout.Button("친구 추가 테스트"))
                                {
                                    Dictionary<MiguFriendEnum, String> friend = (Dictionary<MiguFriendEnum, String>)temp.FriendLists[0];
                                    MiguFriends.instance.AddMyFriendList(friend[MiguFriendEnum._UserID]);
                                }
                            }
                        }
                    }
                    else
                        if ( GUILayout.Button("내 친구 리스트 얻기"))
                        {
                            MiguFriends.instance.TryToGetMyFriendList();
                        }
                }

                // 공지 처리, 이벤트 및 메세지도 동일. 단, 메세지는 삭제 기능 있음
                if (MiguNotice.instance != null)
                {
                    if (MiguNotice.instance.GetUpdatedNews())
                    {
                        MiguNoticeStruct nt = MiguNotice.instance.GetNewsList();
                        if (nt != null)
                        {
                            String noticeinfo = "";

                            foreach (Dictionary<MiguNoticeEnum, String> lists in nt.NoticeLists)
                            {
                                noticeinfo += lists[MiguNoticeEnum._Title] + lists[MiguNoticeEnum._Desc] + "\n";
                            }

                            GUILayout.Label(noticeinfo);
                        }
                    }
                }

                if (MiguReward.instance != null)
                {
                    if ( GUILayout.Button("친구에게 보낼 수 있는 쿠폰번호 확인") )
                    {
                        MiguReward.instance.TryToGetMyRequestCode();
                    }

                    if ( MiguReward.instance.GetMyRequestCodeStatus() == MiguProcess._Success )
                    {
                        GUILayout.TextField("너도 뚱이 한번 해봐! 이 코드[" + MiguReward.instance.GetMyRequestCode() + "] 를 입력하면 선물을 받을 수 있어!" );
                    }

                    GUILayout.Label("쿠폰 코드 입력");
                    MyCoupon = GUILayout.TextField(MyCoupon);

                    if (GUILayout.Button("쿠폰 사용 시도"))
                    {
                        MiguReward.instance.TryToUseRewardCode(MyCoupon, gameObject, "CouponUseResult");
                    }
                }
            }
        }
    }

    /// <summary>
    /// 쿠폰 사용 결과를 받을 콜백 함수
    /// </summary>
    /// <param name="result"></param>
    public void CouponUseResult(MiguRewardENUM result)
    {
        switch( result )
        {
            case MiguRewardENUM._FailedUse:
                Debug.Log("쿠폰 사용 실패!");
                break;
            case MiguRewardENUM._Type1:
                Debug.Log("쿠폰 사용 성공 - 쿠폰타입 1");
                break;
            case MiguRewardENUM._Type2:
                Debug.Log("쿠폰 사용 성공 - 쿠폰타입 2");
                break;
            case MiguRewardENUM._Type3:
                Debug.Log("쿠폰 사용 성공 - 쿠폰타입 3");
                break;
            case MiguRewardENUM._Type4:
                Debug.Log("쿠폰 사용 성공 - 쿠폰타입 4");
                break;
            case MiguRewardENUM._Type5:
                Debug.Log("쿠폰 사용 성공 - 쿠폰타입 5");
                break;
        }
    }
}
