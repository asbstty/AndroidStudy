package com.example.day03_alert;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.widget.Toast;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
	}

	public void demo01(View view){
		Toast toast = Toast.makeText(this, "已经连接canway wifi", Toast.LENGTH_SHORT);
		toast.setGravity(Gravity.CENTER, 0, 0);
		toast.show();
	}
	
	public void demo02(View view){
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setIcon(R.drawable.ic_launcher);
		builder.setTitle("我是确认对话框");
		builder.setMessage("我是消息");
		builder.setPositiveButton("确认",new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				Toast.makeText(MainActivity.this, "你按了确认", Toast.LENGTH_SHORT).show();
			}
		});
		builder.show();
	}
	
	public void demo03(View view){
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setIcon(R.drawable.ic_launcher);
		builder.setTitle("我是确认对话框");
		final String[] sex = new String[]{"男","女"};
		// 默认被选中
		builder.setSingleChoiceItems(sex, 0, new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				Toast.makeText(MainActivity.this, "你选中了:" + sex[which], Toast.LENGTH_SHORT).show();
			}
		});
		builder.show();
	}
	
	public void demo04(View view){
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setIcon(R.drawable.ic_launcher);
		builder.setTitle("复选框");
		final String[] city = new String[]{"A","B","C"};
		final boolean[] checked = new boolean[]{true,false,false};
		// 默认被选中
		builder.setMultiChoiceItems(city, checked, new OnMultiChoiceClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which, boolean isChecked) {
				// 对数据的赋值没有作用
				Toast.makeText(MainActivity.this, "当前:" + city[which] + "的状态为:" + isChecked, Toast.LENGTH_SHORT).show();
			}
		});
		builder.setPositiveButton("确认",new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				StringBuffer buf=new StringBuffer();
				for(int i=0;i<city.length;i++){
					if(checked[i]){
						buf.append(city[i] + ",");
					}
				}
				Toast.makeText(MainActivity.this, "status:" + buf.substring(0,buf.length()-1), Toast.LENGTH_SHORT).show();
			}
		});
		builder.show();
	}

}
