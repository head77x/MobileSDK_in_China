package billingSDK.billingDemo;

import billingSDK.billingDemo.SmsPayFactory.SmsExitListener;
import billingSDK.billingDemo.SmsPayFactory.SmsPayListener;
import android.content.Context;

public abstract class SmsPayBase
{
	protected String[] _payCodes;
	
	protected String getPayCode(SmsPayItems smsPayItem) {
		int index = smsPayItem.value();
		if (index >=0 && index < _payCodes.length) {
			return _payCodes[index];
		}
		return null;
	}
	
	/**
	 * @param context
	 * @param smsPayItem
	 * @param listener
	 * @param isRepeated (For 移动游戏基地)
	 * 如果该参数传递true,表示本次计费的计费点是可重复计费的计费点，SDK不自动保存计费标志位；传递false则为一次性计费的计费点，SDK将自动保存计费标志位，用户下一次玩到该计费点时，不会重复跳出计费界面
	 * 
	 */
	public abstract void pay(Context context, SmsPayItems smsPayItem, SmsPayListener listener, boolean isRepeated);
	
	/**
	 * @param listener
	 * 		退出游戏（For 移动游戏基地）
	 */
	public abstract void exitGame(Context context, SmsExitListener listener);
	
	/**
	 * @param context
	 * 		查看更多游戏（For 移动游戏基地）
	 */
	public abstract void viewMoreGames(Context context);
	
	/**
	 * @return 是否开启音效
	 */
	public abstract boolean isMusicEnabled();
}
