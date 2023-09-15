package com.example.bestbuy_flutter.demo;

import android.content.Context;
import android.graphics.Color;
import android.service.autofill.TextValueSanitizer;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.NonNull;

import java.util.Map;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.platform.PlatformView;

/**
 * @FileName Sep
 * @Author zhouyubin
 * @Date 2023/09/15
 * @Description :TODO
 */
public class NativeView implements PlatformView {

    private final TextView textView;

    NativeView(Context context, int id, Map<String,Object> params, BinaryMessenger messenger){
        MethodChannel channel = new MethodChannel(messenger,"native_for_ios_view_label");
        String p = params.get("text").toString();
        textView = new TextView(context);
        textView.setTextSize(23);
        textView.setBackgroundColor(Color.rgb(255,255,255));
        textView.setText("Rendered on a native Android view (Flutter 参数: " + p + ")");
        channel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {
                if(call.method == "setText"){
                    Map m = (Map) call.arguments;
                    String name = (String) m.get("name");
                    String age = (String) m.get("age");
                    String str = "我是原生动态传的参数："+"name:"+name +"  age:"+age;
                    textView.setText(str);

                }
            }
        });
    }
    @Override
    public View getView() {
        return textView;
    }


    @Override
    public void dispose() {

    }
}
