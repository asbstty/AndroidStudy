package com.example.day02_listview;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main2);
		this.initData();
	}

	public void initData() {
		// 模拟数据加载
		final List<Student> stuList = new ArrayList<Student>();
		for (int i = 0; i < 20; i++) {
			stuList.add(new Student("admin" + i, "1831234567" + i, new Date()));
		}

		ListView listView = (ListView) findViewById(R.id.li);

		// for (Student temp : stuList) {
		// TextView tv = new TextView(this);
		// tv.setText(temp.toString());
		// }

		// 不能直接插入,需要创建适配器
		listView.setAdapter(new BaseAdapter() {

			@Override
			public int getCount() {
				// Log.i("canway", "getCount()");
				return stuList.size();
			}

			@Override
			public View getView(int position, View convertView, ViewGroup parent) {
				// 每次进来封装当前查询的数据
				Log.i("canway", "getView()" + convertView);
				Student student = stuList.get(position);
				// 需要自定义布局,然后添加到listView中
				// TextView tv = new TextView(MainActivity.this);
				// tv.setText(student.toString());
				// 默认情况下是在:setContentView(R.layout.activity_main2);
				// RelativeLayout rl = (RelativeLayout)findViewById(R.id.ri);
				// 直接R中查找 convertView：更新缓存
				RelativeLayout rl = null;
				if (convertView == null) {
					rl = (RelativeLayout) View.inflate(MainActivity.this,
							R.layout.list_item, null);
				} else {
					rl = (RelativeLayout) convertView;
				}

				TextView txtName = (TextView) rl.findViewById(R.id.txt_name);
				TextView txt_tel = (TextView) rl.findViewById(R.id.txt_tel);
				TextView txt_date = (TextView) rl.findViewById(R.id.txt_date);
				txtName.setText(student.getName());
				txt_tel.setText(student.getNumber());
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				txt_date.setText(df.format(student.getDate()));
				// Log.i("canway","rl............" + rl);

				return rl;
			}

			@Override
			public Object getItem(int position) {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public long getItemId(int position) {
				// TODO Auto-generated method stub
				return 0;
			}

		});

	}
}
