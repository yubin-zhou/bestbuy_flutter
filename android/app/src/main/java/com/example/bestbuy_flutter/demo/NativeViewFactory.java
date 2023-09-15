package com.example.bestbuy_flutter.demo;

import android.content.Context;

import java.util.Map;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

/**
 * @FileName Sep
 * @Author zhouyubin
 * @Date 2023/09/15
 * @Description :TODO
 */
public class NativeViewFactory extends PlatformViewFactory {
    
    BinaryMessenger messenger;
    public NativeViewFactory(BinaryMessenger messenger) {
        super(StandardMessageCodec.INSTANCE);
        this.messenger = messenger;
    }



    @Override
    public PlatformView create(Context context, int viewId, Object args) {
        final Map<String,Object> params = (Map<String, Object>) args;
        return  new NativeView(context,viewId,params,messenger);

    }
}
