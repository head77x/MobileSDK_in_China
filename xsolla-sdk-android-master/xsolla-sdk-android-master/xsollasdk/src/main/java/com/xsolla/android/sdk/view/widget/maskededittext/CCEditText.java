package com.xsolla.android.sdk.view.widget.maskededittext;

import android.content.Context;
import android.util.AttributeSet;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CCEditText extends MaskedEditText {


    private ArrayList<CardType> mTypes;
    private Type currentType = Type.WRONG;

    public CCEditText(Context context) {
        super(context);
    }

    public CCEditText(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    public void onTextChanged(CharSequence s, int start, int before, int count) {
        super.onTextChanged(s, start, before, count);
        String text = getRawText();
        if (text.length() > 3 && text.length() < 7) {
            this.removeTextChangedListener(this);
            chooseMask(getRawText());
            this.addTextChangedListener(this);
        }
    }

    private void chooseMask(String s) {
        currentType = getType(s);
        switch (currentType) {
            case AMEX:
            case ENROUTE:
            case JSB15:
                updateMask("#### ###### #####");
                break;
            case DINNERS_CLUB_CARTE_BLANCHE:
            case DINERS_CLUB_INTERNATIONAL:
                updateMask("#### #### #### ##");
                break;
            case VISA:
            case VISA_ELECTRON:
            case MASTERCARD:
            case MAESTRO:
            case JSB16:
                updateMask("#### #### #### ####");
                break;
            default:
                updateMask("#### #### #### #### ###");
                break;
        }
    }

    public enum Type {
        AMEX, ENROUTE, JSB15, DINNERS_CLUB_CARTE_BLANCHE,
        DINERS_CLUB_INTERNATIONAL, VISA, VISA_ELECTRON,
        MASTERCARD, DISCOVER, JSB16, MAESTRO, LASER, WRONG
    }

    public class CardType {

        public Type type;
        public Pattern pattern;
        public int[] length;

        public CardType(Type mType, Pattern pattern, int[] length) {
            this.type = mType;
            this.pattern = pattern;
            this.length = length;
        }
    }

    private ArrayList<CardType> getTypes() {
        if (mTypes == null) {
            mTypes = new ArrayList<>();
            mTypes.add(new CardType(Type.AMEX, Pattern.compile("^3[47]"), new int[]{15}));
            mTypes.add(new CardType(Type.DINNERS_CLUB_CARTE_BLANCHE, Pattern.compile("^30[0-5]"), new int[]{14}));
            mTypes.add(new CardType(Type.DINERS_CLUB_INTERNATIONAL, Pattern.compile("^36"), new int[]{14}));
            mTypes.add(new CardType(Type.JSB16, Pattern.compile("^3"), new int[]{16}));
            mTypes.add(new CardType(Type.JSB15, Pattern.compile("^(2131|1800)"), new int[]{16}));
            mTypes.add(new CardType(Type.LASER, Pattern.compile("^(6304|670[69]|6771)"), new int[]{16, 17, 18, 19}));
            mTypes.add(new CardType(Type.VISA_ELECTRON, Pattern.compile("^(4026|417500|4508|4844|491(3|7))"), new int[]{16}));
            mTypes.add(new CardType(Type.VISA, Pattern.compile("^4"), new int[]{16}));
            mTypes.add(new CardType(Type.MASTERCARD, Pattern.compile("^5[1-5]"), new int[]{16}));
            mTypes.add(new CardType(Type.MAESTRO, Pattern.compile("^(5018|5020|5038|6304|6759|676[1-3])"), new int[]{12, 13, 14, 15, 16, 17, 18, 19}));// CVV is not required
            mTypes.add(new CardType(Type.DISCOVER, Pattern.compile("^(6011|622(12[6-9]|1[3-9][0-9]|[2-8][0-9]{2}|9[0-1][0-9]|92[0-5]|64[4-9])|65)"), new int[]{16}));
            mTypes.add(new CardType(Type.ENROUTE, Pattern.compile("^(2(014|149))"), new int[]{15}));
        }
        return mTypes;
    }

    private Type getType(String cardNumber) {
        ArrayList<CardType> types = getTypes();
        Matcher m;
        for (CardType cardType : types) {
            m = cardType.pattern.matcher(cardNumber);
            if (m.find())
                return cardType.type;
        }
        return Type.WRONG;
    }

    public Type getCurrentType() {
        return currentType;
    }
}
