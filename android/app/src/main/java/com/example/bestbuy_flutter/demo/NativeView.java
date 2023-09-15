package com.example.bestbuy_flutter.demo;

import android.content.Context;
import android.graphics.Color;
import android.service.autofill.TextValueSanitizer;
import android.view.View;
import android.widget.TextView;

import java.util.Map;

import io.flutter.plugin.platform.PlatformView;

/**
 * @FileName Sep
 * @Author zhouyubin
 * @Date 2023/09/15
 * @Description :TODO
 */
public class NativeView implements PlatformView {

    private final TextView textView;

    NativeView(Context context, int id, Map<String,Object> params){

        String p = params.get("text").toString();
        textView = new TextView(context);
        textView.setTextSize(23);
        textView.setBackgroundColor(Color.rgb(255,255,255));
        textView.setText("Rendered on a native Android view (Flutter 参数: " + p + ")");
    }
    @Override
    public View getView() {
        return textView;
    }

    @Override
    public void dispose() {

    }
}
