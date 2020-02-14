package com.example;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.example.unipaytest_200_all.R;
import com.unicom.dcLoader.Utils;
import com.unicom.dcLoader.Utils.UnipayPayResultListener;
import com.unipay.account.AccountAPI;
import com.unipay.account.AccountAPI.BusyException;
import com.unipay.account.AccountAPI.OnSwitchAccountResultListener;
import com.unipay.account.UnipayAccountPlatform;
import com.unipay.account.UserInfo;
import com.unipay.account.UserOrderBiz;

import android.os.Bundle;
import android.app.Activity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity
{
    public static final String CLIENT_ID = "9000286920141028153804390200";
    public static final String CLIENT_KEY = "a2fb79c82bdb70d0";

    private Button mBtnLogin;
    private Button mBtnLogout;
    private Button mBtnSwitchAccount;
    private Button mBtnShowFloaticon;
    private Button mBtnHideFloaticon;
    private Button mBtnEnterUCenter;
    private Button mBtnQueryUserOrderBiz;

    private Button mBtnGetUinfo;

    private EditText mEtOrderBizCode;
    private TextView mTvOutput;

    @Override
    public void onBackPressed()
    {
        exit();
    }

    @Override
    protected void onPause()
    {
        Utils.getInstances().onPause(this);
        super.onPause();
    }

    @Override
    protected void onResume()
    {
        super.onResume();
        Utils.getInstances().onResume(this);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);

        DemoLog.d("savedInstanceState: " + savedInstanceState);
        if(savedInstanceState != null)
        {
            finish();
            return;
        }

        setContentView(R.layout.activity_main);

        initPayViews();

        mBtnLogin = (Button)findViewById(R.id.btn_login);
        mBtnLogin.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                try
                {
                    UnipayAccountPlatform.getInstance().login(MainActivity.this, mOnLoginResultListener);
                }
                catch(AccountAPI.BusyException e)
                {
                    Toast.makeText(MainActivity.this, "当前已有账户操作，请稍后再试", Toast.LENGTH_SHORT).show();
                }
            }
        });

        mBtnLogout = (Button)findViewById(R.id.btn_logout);
        mBtnLogout.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                mTvOutput.setText("正在注销...");
                UnipayAccountPlatform.getInstance().logout(MainActivity.this, mOnLogoutResultListener);
            }
        });

        mBtnSwitchAccount = (Button)findViewById(R.id.btn_switchaccount);
        mBtnSwitchAccount.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                if(UnipayAccountPlatform.getInstance() == null)
                {
                    return;
                }

                mTvOutput.setText("正在切换账户...");
                UnipayAccountPlatform.getInstance().switchAccount(MainActivity.this, new OnSwitchAccountResultListener()
                {
                    @Override
                    public void onLogout()
                    {
                        mTvOutput.append("\n切换账户2.注销");
                        setAccountButtonsEnabled(false);
                    }

                    @Override
                    public void onError(int code, String errmsg)
                    {
                        mTvOutput.append(String.format("\n切换账户2.失败 c(%d), m(%s)", code, errmsg));
                        setAccountButtonsEnabled(UnipayAccountPlatform.getInstance().isLoggined());
                    }

                    @Override
                    public void onAccountSwitched()
                    {
                        mTvOutput.append("\n切换账户2.新账户");
                        setAccountButtonsEnabled(true);
                    }
                });
            }
        });

        mBtnShowFloaticon = (Button)findViewById(R.id.btn_show_floaticon);
        mBtnShowFloaticon.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                UnipayAccountPlatform.getInstance().enableFloaticon(true);
            }
        });

        mBtnHideFloaticon = (Button)findViewById(R.id.btn_hide_floaticon);
        mBtnHideFloaticon.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                UnipayAccountPlatform.getInstance().enableFloaticon(false);
            }
        });

        mBtnEnterUCenter = (Button)findViewById(R.id.btn_enter_ucenter);
        mBtnEnterUCenter.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                if(UnipayAccountPlatform.getInstance() != null)
                {
                    UnipayAccountPlatform.getInstance().enterUsercenter(MainActivity.this);
                }
            }
        });

        mBtnQueryUserOrderBiz = (Button)findViewById(R.id.btn_query_user_order_biz);
        mBtnQueryUserOrderBiz.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                if(UnipayAccountPlatform.getInstance() == null)
                {
                    return;
                }
                String bizCode = mEtOrderBizCode.getText().toString();

                UnipayAccountPlatform.getInstance().queryUserOrderBiz(bizCode, mOnQueryUserOrderBizResultListener);
                mTvOutput.setText(String.format("查询中(%s)，请稍候...\n", bizCode));
            }
        });

        mBtnGetUinfo = (Button)findViewById(R.id.btn_getuinfo);
        mBtnGetUinfo.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                if(UnipayAccountPlatform.getInstance() == null)
                {
                    return;
                }
                UserInfo uinfo = UnipayAccountPlatform.getInstance().getCurrentUserInfo();
                mTvOutput.setText(String.format("用户信息(%s)", uinfo));
            }
        });

        mEtOrderBizCode = (EditText)findViewById(R.id.et_user_order_biz_code);
        mTvOutput = (TextView)findViewById(R.id.tv_output);

        setAccountButtonsEnabled(false);
        mBtnLogin.setEnabled(false);
        mBtnSwitchAccount.setEnabled(false);

        doInitSDK();
    }

    private void setAccountButtonsEnabled(boolean loggedin)
    {
        mBtnLogin.setEnabled(true);
        mBtnSwitchAccount.setEnabled(true);

        mBtnHideFloaticon.setEnabled(loggedin);
        mBtnShowFloaticon.setEnabled(loggedin);
        mBtnEnterUCenter.setEnabled(true);
        mBtnQueryUserOrderBiz.setEnabled(loggedin);
        mBtnLogout.setEnabled(loggedin);
        mBtnQueryUserOrderBiz.setEnabled(true);
    }

    private void doInitSDK()
    {
        DemoLog.d("INIT-S");
        // 注: 进入应用时必须首先调用此接口，且只能调用一次 
        try
        {
            UnipayAccountPlatform.init(MainActivity.this, CLIENT_ID, CLIENT_KEY, mOnInitResultListener);
        }
        catch(BusyException e)
        {
            DemoLog.e("INIT exception!");
            mTvOutput.setText("当前正在初始化中，请稍后再试");
            return;
        }
        DemoLog.d("INITing...");
        mTvOutput.setText("初始化中...");

    }
    
    private AccountAPI.OnInitResultListener mOnInitResultListener = new AccountAPI.OnInitResultListener()
    {
        @Override
        public void onResult(int code, String message)
        {
            DemoLog.d(String.format("INIT-E c(%d), m(%s)", code, message));

            if(code == AccountAPI.CODE_SUCCESS)
            {
                mTvOutput.setText("初始化成功");

                UnipayAccountPlatform.getInstance().setAccountStatusChangedListener(mOnAccountStatusChangedListener);
                setAccountButtonsEnabled(false);

                mTvOutput.append("\n...." + Utils.getInstances().getSimType(MainActivity.this));
            }
            else
            {
                mTvOutput.setText("初始化失败: " + message);
            }
        }
    };

    private AccountAPI.OnLoginResultListener mOnLoginResultListener =
                    new AccountAPI.OnLoginResultListener()
    {
        @Override
        public void onLoginResult(int code)
        {
            DemoLog.d(String.format("code(%d)", code));
            if(code == AccountAPI.CODE_SUCCESS)
            {
                UserInfo uinfo = UnipayAccountPlatform.getInstance().getCurrentUserInfo();
                mTvOutput.setText("登录成功:\n" + uinfo + "\n");
                setAccountButtonsEnabled(true);
            }
            else
            {
                mTvOutput.setText(String.format("登录失败(%d)", code));
                setAccountButtonsEnabled(false);
            }
        }
    };

    private AccountAPI.OnLogoutResultListener mOnLogoutResultListener = new AccountAPI.OnLogoutResultListener()
    {
        @Override
        public void onLogoutResult(int code, String message)
        {
            mTvOutput.append(String.format("\n注销结果(%d) (%s)", code, message));
            if(code == AccountAPI.CODE_SUCCESS)
            {
                mTvOutput.append("\n注销成功");
                setAccountButtonsEnabled(false);
            }
        }
    };

    private AccountAPI.OnAccountStatusChangedListener mOnAccountStatusChangedListener =
                    new AccountAPI.OnAccountStatusChangedListener()
    {
        
        @Override
        public void onLogout()
        {
            DemoLog.d("");

            mTvOutput.setText("用户已退出登录，请重新登录");
            setAccountButtonsEnabled(false);
        }
        
        @Override
        public void onAccountSwitched()
        {
            DemoLog.d("");
            UserInfo uinfo = UnipayAccountPlatform.getInstance().getCurrentUserInfo();
            if(uinfo == null)
            {
                DemoLog.e("can NOT get current user info!!");
                mTvOutput.setText("错误.1：未能获取到用户信息!");

                setAccountButtonsEnabled(false);
            }
            else
            {
                mTvOutput.setText(String.format("已切换到新用户: \n%s\n", uinfo));

                setAccountButtonsEnabled(true);
            }
        }
    };

    private AccountAPI.OnQueryUserOrderBizResultListener mOnQueryUserOrderBizResultListener =
                    new AccountAPI.OnQueryUserOrderBizResultListener()
    {
        
        @Override
        public void onResult(int code, String message, List<UserOrderBiz> list)
        {
            DemoLog.d(String.format("code(%d), msg(%s), list(%s)", code, message, list));

            String wantedBizCode = mEtOrderBizCode.getText().toString();
            if(wantedBizCode == null)
            {
                wantedBizCode = "";
            }

            int count = 0;
            if(list != null)
            {
                count = list.size();
            }

            if(code == AccountAPI.CODE_SUCCESS)
            {
                if(!"".equals(wantedBizCode))
                {
                    if(list.size() > 0)
                    {
                        UserOrderBiz biz = list.get(0);
                        mTvOutput.append(String.format("用户已订购业务 (%s) (%s)\n", biz.getBizCode(), biz.getEffectDate()));
                    }
                    else
                    {
                        mTvOutput.append("数据错误\n");
                    }
                }
                else
                {
                    mTvOutput.append(String.format("已查询到%d条业务\n", count));
                    int i = 0;
                    for(UserOrderBiz biz: list)
                    {
                        mTvOutput.append(String.format("业务[%d]: 代码(%s) 生效时间(%s)\n", i, biz.getBizCode(), biz.getEffectDate()));
                    }
                }
            }
            else if(code == AccountAPI.CODE_USER_ORDER_BIZ_NOT_FOUND)
            {
                mTvOutput.append(String.format("用户未订购业务(%s)", wantedBizCode));
            }
            else
            {
                mTvOutput.append(String.format("查询失败 code(%d) msg(%s)", code, message));
            }

        }
    };

    private void exit()
    {
        if(UnipayAccountPlatform.getInstance() != null)
        {
            UnipayAccountPlatform.getInstance().exitSDK();
        }

        finish();
    }

    private void initPayViews()
    {
        findViewById(R.id.btn_0).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_1).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_2).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_3).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_4).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_5).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_6).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_7).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_8).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_9).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_10).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_11).setOnClickListener(mOnPayButtonClickListener);
        findViewById(R.id.btn_12).setOnClickListener(mOnPayButtonClickListener);
    }

    private View.OnClickListener mOnPayButtonClickListener = new View.OnClickListener()
    {
        @Override
        public void onClick(View v)
        {
            int id = v.getId();
            switch (id) {
            case R.id.btn_0:
                Utils.getInstances().payOnline(MainActivity.this, "001", "0",
                        dateFormat.format(new Date()) + "2222222222",
                        new paylistener());
                break;
                
            case R.id.btn_1:
                Utils.getInstances().payOnline(MainActivity.this, "020", "0",
                        dateFormat.format(new Date()) + "2222222222",
                        new paylistener());
                break;
                
            case R.id.btn_2:
                Utils.getInstances().payOnline(MainActivity.this, "021", "0",
                        dateFormat.format(new Date()) + "2222222222",
                        new paylistener());
                break;
                
            case R.id.btn_3:
                Utils.getInstances().payOnline(MainActivity.this, "022", "0",
                        dateFormat.format(new Date()) + "2222222222",
                        new paylistener());
                break;
                
            case R.id.btn_4:
                Utils.getInstances().payOnline(MainActivity.this, "023", "0",
                        dateFormat.format(new Date()) + "2222222222",
                        new paylistener());
                break;
                
            case R.id.btn_5:
                Utils.getInstances().payOnline(MainActivity.this, "041", "1",
                        dateFormat.format(new Date()) + "2222222222",
                        new paylistener());
                break;
                
            case R.id.btn_6:
                Utils.getInstances().payOnline(MainActivity.this, "041", "2",
                        dateFormat.format(new Date()) + "2222222222",
                        new paylistener());
                break;
                
            case R.id.btn_7:
                Utils.getInstances().pay(MainActivity.this, "001", new paylistener());
                break;
                
            case R.id.btn_8:
                Utils.getInstances().pay(MainActivity.this, "020", "123456789012345678901234",new paylistener());
                break;
                
            case R.id.btn_9:
                Utils.getInstances().pay(MainActivity.this, "021", new paylistener());
                break;
                
            case R.id.btn_10:
                Utils.getInstances().payOnlineWithWostre(MainActivity.this, "001", "0",
                        dateFormat.format(new Date()) + "2222222222",
                        new paylistener());
                break;
                
            case R.id.btn_11:
                Utils.getInstances().payOnlineWithWostre(MainActivity.this, "020", "0",
                        dateFormat.format(new Date()) + "2222222222",
                        new paylistener());
                break;

            case R.id.btn_12:
                Utils.getInstances().payOnlineWithWostre(MainActivity.this, "021", "0",
                        dateFormat.format(new Date()) + "2222222222",
                        new paylistener());
                break;
                
            default:
                break;
            }

        }
    };

    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
    private class paylistener implements UnipayPayResultListener{
        @Override
        public void PayResult(String arg0, int arg1, int arg2, String arg3)
        {
            Toast.makeText(MainActivity.this, "arg0:"+arg0+";arg1:"+arg1+"arg2:"+arg2+"arg3:"+arg3, Toast.LENGTH_SHORT).show();
        }
    }

}
