package com.example.app_ban_sach.activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.example.app_ban_sach.R;
import com.example.app_ban_sach.adapter.TamLyAdapter;
import com.example.app_ban_sach.model.sachmoi;
import com.example.app_ban_sach.ultil.checkConnect;
import com.example.app_ban_sach.ultil.sever;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class TamLy_Activity extends AppCompatActivity {
    Toolbar toolbar_TamLy;
    ListView listView_TamLy;
    TamLyAdapter tamLy_Adapter;
    ArrayList<sachmoi> mangtamly;
    int id_TamLy = 3;
    int page = 1;
    View footerview;
    boolean isLoading = false;
    boolean limitdata = false;
    mHandler mHandler;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout_tamly);
        AnhXa();
        GetIDLoaiSach();
        ActionTooolbar();
        GetData(page);
        LoadMoreData();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        switch (item.getItemId()){
            case R.id.menu_shoppingCart:
                Intent intent = new Intent(getApplicationContext(),ShoppingCart_Activity.class);
                startActivity(intent);
        }
        return super.onOptionsItemSelected(item);
    }

    private void LoadMoreData() {
        listView_TamLy.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                Intent intent = new Intent(getApplicationContext(), ThongTin_Activity.class);
                intent.putExtra("thongtinsach", mangtamly.get(i));
                startActivity(intent);
            }
        });
        listView_TamLy.setOnScrollListener(new AbsListView.OnScrollListener() {
            @Override
            public void onScrollStateChanged(AbsListView absListView, int i) {

            }

            @Override
            public void onScroll(AbsListView absListView, int FirstItem, int VisibleItem, int TotalItem) {
                if (FirstItem + VisibleItem == TotalItem && TotalItem != 0 && isLoading == false && limitdata == false) {
                    isLoading = true;
                    ThreandData threandData = new ThreandData();
                    threandData.start();
                }
            }
        });
    }
    public class mHandler extends Handler {
        @Override
        public void handleMessage(@NonNull Message msg) {
            switch (msg.what) {
                case 0:
                    listView_TamLy.addFooterView(footerview);
                    break;
                case 1:
                    GetData(++page);
                    isLoading = false;
                    break;
            }
            super.handleMessage(msg);
        }
    }
    public class ThreandData extends Thread{
        @Override
        public void run() {
            mHandler.sendEmptyMessage(0);
            try {
                Thread.sleep(3000);                                 // Nghỉ trong 3s
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            Message message = mHandler.obtainMessage(1);            // Phương thức liên kết với Handler
            mHandler.sendMessage(message);
            super.run();
        }
    }
    private void GetData(int page){
        RequestQueue requestQueue = Volley.newRequestQueue(getApplicationContext());
        //Lấy đường dẫn
        String duongdan = sever.duongdan_TheoTheLoai + String.valueOf(page);
        // Đọc hết dữ liệu
        StringRequest stringRequest = new StringRequest(Request.Method.POST, duongdan, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                int id = 0;
                String ten = "";
                String tentacgia = "";
                int soluong = 0;
                String theloai ="";
                int gia = 0;
                String hinhanh = "";
                String mota = "";

                if (response != null && response.length() != 2){
                    listView_TamLy.removeFooterView(footerview);
                    try {
                        JSONArray jsonArray = new JSONArray(response);
                        for (int i = 0; i < jsonArray.length(); i++){
                            JSONObject jsonObject = jsonArray.getJSONObject(i);
                            id = jsonObject.getInt("id");
                            ten = jsonObject.getString("tensach");
                            tentacgia = jsonObject.getString("tentacgia");
                            soluong = jsonObject.getInt("soluong");
                            theloai = jsonObject.getString("theloai");
                            gia = jsonObject.getInt("gia");
                            hinhanh = jsonObject.getString("hinhanh");
                            mota = jsonObject.getString("mota");
                            mangtamly.add(new sachmoi(id, ten, tentacgia, soluong, theloai, gia, hinhanh, mota));
                            tamLy_Adapter.notifyDataSetChanged();
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                else {
                    limitdata = true;
                    listView_TamLy.removeFooterView(footerview);
                    checkConnect.ShowToast(getApplicationContext(),"Đã hết đầu mục sách này!!!");
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        }){
            @Nullable
            @Override //Đầy dữ liệu lên server. đẩy key và dữ liệu lên
            protected Map<String, String> getParams() throws AuthFailureError {
                HashMap<String, String> paras = new HashMap<String, String>();
                // Đẩy dử liệu lên. key là idphanloai nhận từ Main với giá trị là String.valueOf(id_KinhTe)
                paras.put("idphanloai", String.valueOf(id_TamLy));
                return paras;
            }
        };
        // thực thi
        requestQueue.add(stringRequest);
    }
    private void ActionTooolbar(){
        setSupportActionBar(toolbar_TamLy);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbar_TamLy.setNavigationIcon(R.drawable.ic_back);
        toolbar_TamLy.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
    }
    private void GetIDLoaiSach(){
        id_TamLy = getIntent().getIntExtra("idtheloai", -1);
    }

    private void AnhXa() {
        toolbar_TamLy = (Toolbar) findViewById(R.id.toolbar_tamly);
        listView_TamLy = (ListView) findViewById(R.id.lisview_tamly);
        mangtamly = new ArrayList<>();
        tamLy_Adapter = new TamLyAdapter(getApplicationContext(), mangtamly);
        listView_TamLy.setAdapter(tamLy_Adapter);
        LayoutInflater inflater = (LayoutInflater) getSystemService(LAYOUT_INFLATER_SERVICE);
        footerview = inflater.inflate(R.layout.progressbar, null);
        mHandler = new mHandler();
    }
}
















