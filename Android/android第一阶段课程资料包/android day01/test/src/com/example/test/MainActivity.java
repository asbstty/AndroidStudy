package com.example.test;

import a.b.c.R;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		Log.i("canway", "测试过滤器");
		// 查找R中的资源
		Button btn_call = (Button) findViewById(R.id.btn_call);
		btn_call.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// 1: 获取电话号码
				EditText editText = (EditText) findViewById(R.id.eidt_call);
				String number = editText.getText().toString();
				System.out.println("手机号码为:" + number);
				// 2: 告诉android我的意图
				Intent intent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:"
						+ number));
				startActivity(intent);
			}
		});
	}

	public void goUrl(View view) {
		// 1: 获取电话号码
		EditText editText = (EditText) findViewById(R.id.eidt_http);
		String url = editText.getText().toString();
		Log.i("canway", url);
		// 调用意图
		Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("http:" + url));
		startActivity(intent);
	}
}
