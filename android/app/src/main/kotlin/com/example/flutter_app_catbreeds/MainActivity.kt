package com.ngonzano.catbreeds

import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.ngonzano.catbreeds/channel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { 
            call, result ->
            when (call.method) {
                "getPlatformVersion" -> {
                    val deviceInfo = mapOf(
                        "deviceName" to Build.MODEL,
                        "osVersion" to Build.VERSION.RELEASE
                    )
                    result.success(deviceInfo)
                }
                else -> result.notImplemented()
            }
        }
    }
}