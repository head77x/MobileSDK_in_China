package com.xsolla.android.sdk.util.iconhelper;

import android.content.Context;
import android.graphics.Typeface;
import android.text.Spanned;
import android.widget.TextView;

import static android.text.Html.fromHtml;
import static android.text.Html.toHtml;
import static com.xsolla.android.sdk.util.iconhelper.Util.replaceIcons;
import static java.lang.String.valueOf;

public class IconMaker {

    private static final String TTF_FILE = "fonts/m-pst3-i.ttf";

    public static final String TAG = IconMaker.class.getSimpleName();

    private static Typeface typeface = null;

    private IconMaker() {
        // Prevent instantiation
    }

    /**
     * Transform the given TextViews replacing {icon_xxx} texts with icons.
     */
    public static final void addIcons(TextView... textViews) {
        for (TextView textView : textViews) {
            textView.setTypeface(getTypeface(textView.getContext()));
            textView.setText(compute(textView.getText()));
            textView.setIncludeFontPadding(false);
        }
    }

    public static CharSequence compute(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            String text = toHtml((Spanned) charSequence);
            return fromHtml(replaceIcons(new StringBuilder((text))).toString());
        }
        String text = charSequence.toString();
        return replaceIcons(new StringBuilder(text));
    }

    public static final void setIcon(TextView textView, IconValue value) {
        textView.setTypeface(getTypeface(textView.getContext()));
        textView.setText(valueOf(value.character));
    }

    /**
     * The typeface that contains FontAwesome icons.
     *
     * @return the typeface, or null if something goes wrong.
     */
    public static final Typeface getTypeface(Context context) {
        if (typeface == null) {
            typeface = Typeface.createFromAsset(context.getAssets(), TTF_FILE);//Typeface.createFromFile(resourceToFile(context, TTF_FILE));
        }
        return typeface;
    }

    public static enum IconValue {
        ic_arrowback('\uE001'),
        ic_arrowdown('\uE002'),
        ic_arrowforward('\uE003'),
        ic_arrowup('\uE004'),
        ic_calendar('\uE005'),
        ic_card('\uE006'),
        ic_cart('\uE007'),
        ic_country('\uE008'),
        ic_currency('\uE009'),
        ic_error('\uE00A'),
        ic_hint('\uE00B'),
        ic_info('\uE00C'),
        ic_lock('\uE00D'),
        ic_mappin('\uE00E'),
        ic_menu('\uE00F'),
        ic_phone('\uE010'),
        ic_ruble('\uE011'),
        ic_sale('\uE012'),
        ic_search('\uE013'),
        ic_sendby('\uE014'),
        ic_shop('\uE015'),
        ic_subscription('\uE016'),
        ic_success('\uE017'),
        ic_tickselect('\uE018'),
        ic_total('\uE019'),
        ic_useragreement('\uE01A'),
        ic_user('\uE01B'),
        ic_waiting('\uE01C'),
        ic_xsollaapp('\uE01D'),
        ic_zipcode('\uE01E');

        char character;

        IconValue(char character) {
            this.character = character;
        }

        public String formattedName() {
            return "{" + name() + "}";
        }

        public char character() {
            return character;
        }

    }

}
