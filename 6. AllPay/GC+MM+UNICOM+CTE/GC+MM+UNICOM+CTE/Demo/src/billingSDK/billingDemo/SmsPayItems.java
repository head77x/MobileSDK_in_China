package billingSDK.billingDemo;

public enum SmsPayItems {

	Coin_1200000(0), Coin_500000(1), Coin_200000(2), Resurgence(3), Coin_coupon_40000(4);

    private int value = 0;

    private SmsPayItems(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }
}
