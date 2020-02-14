package cn.cmgame.demo;


import android.app.ListActivity;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.*;
import android.widget.AdapterView.OnItemClickListener;
import cn.cmgame.billing.api.BillingResult;
import cn.cmgame.billing.api.GameInterface;
import cn.cmgame.billing.api.LoginResult;
import cn.cmgame.gamepad.api.Gamepad;
import cn.cmgame.gamepad.api.KeyState;
import cn.cmgame.leaderboard.api.GameLeaderboard;

import java.io.File;

public class MainActivity extends ListActivity {

  static final String[] BUTTONS = new String[]{
    "00.购买计费点：001",
    "01.购买计费点：002",
    "02.购买计费点：003",
    "03.购买计费点：004",
    "04.购买计费点：005",
    "05.购买计费点：006",
    "06.购买计费点：007",
    "07.购买计费点：008",
    "08.购买计费点：009",
    "09.购买计费点：010",
    "10.购买计费点：011",
    "11.购买计费点：012",
    "12.购买计费点：013",
    "13.购买计费点：014",
    "14.购买计费点：015",
    "15.更多游戏",
    "16.游戏音效",
    "17.排行榜",
    "18.上传分数",
    "19.手柄",
    "20.截屏分享1",
    "21.截屏分享2",
    "22.退出游戏"
  };


  /**
   * Called when the activity is first created.
   */
  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    //不显示程序的标题栏
    requestWindowFeature(Window.FEATURE_NO_TITLE);

    //不显示系统的标题栏
    getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);

    GameInterface.initializeApp(this);

    // 监听登录结果，游戏根据自身业务逻辑，使用移动游戏SDK提供的登录结果
    GameInterface.setLoginListener(this, new GameInterface.ILoginCallback(){
      @Override
      public void onResult(int i, String s, Object o) {
        System.out.println("Login.Result=" + s);
        if(i == LoginResult.SUCCESS_EXPLICIT){
          System.out.println("用户显式登录成功");
        }
        if(i == LoginResult.FAILED_EXPLICIT){
          System.out.println("用户显式登录失败");
        }
        if(i == LoginResult.UNKOWN){
          System.out.println("用户取消登录，或无网络状态，未触发登录");
        }
      }
    });

    final GameInterface.IPayCallback payCallback = new GameInterface.IPayCallback() {
      @Override
      public void onResult(int resultCode, String billingIndex, Object obj) {
        String result = "";
        switch (resultCode) {
          case BillingResult.SUCCESS:
            result = "购买道具：[" + billingIndex + "] 成功！";
            break;
          case BillingResult.FAILED:
            result = "购买道具：[" + billingIndex + "] 失败！";
            break;
          default:
            result = "购买道具：[" + billingIndex + "] 取消！";
            break;
        }
        Toast.makeText(MainActivity.this, result, Toast.LENGTH_SHORT).show();
      }
    };

    setListAdapter(new ArrayAdapter<String>(this, R.layout.main_menu_item, BUTTONS));
    ListView lv = getListView();
    lv.setOnItemClickListener(new OnItemClickListener() {
      public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        if(position==0){
          if(GameInterface.getActivateFlag("001")){
            Toast.makeText(MainActivity.this, "001 已购买过", Toast.LENGTH_SHORT).show();
            return;
          }
          GameInterface.doBilling(MainActivity.this, true, false, "001", null, payCallback);
        } else if (position==15) {
          GameInterface.viewMoreGames(MainActivity.this);
        } else if (16 == position) {
          Toast.makeText(MainActivity.this, "游戏是否开启音效：" + GameInterface.isMusicEnabled(), Toast.LENGTH_SHORT).show();
        } else if (17 == position) {
          GameLeaderboard.initializeLeaderboard(MainActivity.this, "160120192000", "XnWIrPdKXk+JuEv90zU++wFwf7g=", "10043");
          GameLeaderboard.showLeaderboard(MainActivity.this);
        } else if (18 == position) {
          GameLeaderboard.commitScore(MainActivity.this, 2000002, new GameLeaderboard.ISimpleCallback() {
            @Override
            public void onFailure(String exceptionMessage) {
              Toast.makeText(MainActivity.this, exceptionMessage, Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onSuccess(String message) {
              Toast.makeText(MainActivity.this, "上传分数成功", Toast.LENGTH_SHORT).show();
            }
          });
        } else if (19 == position) {
          Gamepad.initGamepad(MainActivity.this);
          Gamepad.setConnectionListener(new Gamepad.GamepadConnectionListener() {
            @Override
            public void onConnectionState(int status) {
              if (status == Gamepad.ConnectionState.CONNECTED) {
                MainActivity.this.runOnUiThread(new Runnable() {
                  @Override
                  public void run() { Toast.makeText(MainActivity.this, "手柄自动连接成功", Toast.LENGTH_SHORT).show();
                  }
                });
              } else {
                MainActivity.this.runOnUiThread(new Runnable() {
                  @Override
                  public void run() { Toast.makeText(MainActivity.this, "手柄自动连接失败", Toast.LENGTH_SHORT).show();
                  }
                });
              }
            }
          });
          Gamepad.setGamepadCallback(new Gamepad.GamepadCallback() {
            @Override
            public void onReceiveData(KeyState[] keyStates) {
              Toast.makeText(MainActivity.this, "虚拟按键：" + keyStates, Toast.LENGTH_SHORT).show();
            }
          });
        } else if (20 == position) {
          GameInterface.doScreenShotShare(MainActivity.this, null);
        } else if (21 == position) {
          GameInterface.doScreenShotShare(MainActivity.this, Uri.fromFile(new File(Environment
            .getExternalStorageDirectory()
            + "/Download/abc.png")));
        } else if (22 == position) {
          exitGame();
        } else {
          String billingIndex =  getBillingIndex(position);
          GameInterface.doBilling(MainActivity.this, true, true, billingIndex, null, payCallback);
        }
      }
    });
  }

  private String getBillingIndex(int i) {
    if (i < 9) {
      return "00" + (++i);
    } else {
      return "0" + (++i);
    }
  }

  @Override
  public void onResume() {
    super.onResume();
  }

  private void exitGame() {
    GameInterface.exit(this, new GameInterface.GameExitCallback() {
      @Override
      public void onConfirmExit() {
        MainActivity.this.finish();
        System.exit(0);
      }

      @Override
      public void onCancelExit() {
        Toast.makeText(MainActivity.this, "取消退出", Toast.LENGTH_SHORT).show();
      }
    });
  }

  @Override
  public boolean onKeyDown(int keyCode, KeyEvent event) {
    if (keyCode == KeyEvent.KEYCODE_BACK) {
      exitGame();
      return true;
    }
    return super.onKeyDown(keyCode, event);
  }
}
