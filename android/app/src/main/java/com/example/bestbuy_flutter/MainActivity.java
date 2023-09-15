package com.example.bestbuy_flutter;

import androidx.annotation.NonNull;

import com.example.bestbuy_flutter.demo.NativeViewFactory;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;

public class MainActivity extends FlutterActivity {
    final String viewId = "native_for_ios_view_label";
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        flutterEngine.getPlatformViewsController().getRegistry().registerViewFactory(viewId,new NativeViewFactory());
    }
}
