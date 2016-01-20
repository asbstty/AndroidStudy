package com.example.day02_login;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;

public class MainActivity extends Activity {
	
	private EditText edit_name = null;
	private EditText edit_pass = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		edit_name=(EditText) findViewById(R.id.txt_username);
		edit_pass = (EditText) findViewById(R.id.txt_password);
		this.fillLogin();
	}
	public void fillLogin(){
		File file = new File(getFilesDir(), "user.txt");
		if(file.exists()){
			InputStream input = null;
			try {
				input=new FileInputStream(file);
				byte[] b=new byte[input.available()];
				int len = input.read(b);
				String data=new String(b,0,len);
				edit_name.setText(data.split(",")[0]);
				edit_pass.setText(data.split(",")[1]);
			} catch (Exception e) {
				throw new RuntimeException();
			}finally{
				try {
					input.close();
				} catch (Exception e) {
					e.printStackTrace();
					throw new RuntimeException();
				}
			}
		}
	}
	

	public void autoLogin(View v) {
		// 判断复选框
		CheckBox ckbox = (CheckBox) findViewById(R.id.chk_login);
		if (ckbox.isChecked()) {
		
			Log.i("canway", edit_name.getText().toString());
			Log.i("canway", edit_pass.getText().toString());
			// 通过文件输出流,写到设备中
			OutputStream out = null;
			try {
				out = new FileOutputStream(new File(getFilesDir(), "user.txt"));
				out.write((edit_name.getText().toString() + "," + edit_pass
						.getText().toString()).getBytes());
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException();
			} finally {
				try {
					out.close();
				} catch (Exception e) {
					e.printStackTrace();
					throw new RuntimeException();
				}
			}
		}
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
