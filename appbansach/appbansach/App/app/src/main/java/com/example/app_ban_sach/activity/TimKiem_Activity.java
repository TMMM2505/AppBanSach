package com.example.app_ban_sach.activity;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.app_ban_sach.R;
import com.example.app_ban_sach.adapter.TimKiemAdapter;
import com.example.app_ban_sach.model.sachcu;
import com.example.app_ban_sach.retrofit.ApiBookApp;
import com.example.app_ban_sach.retrofit.RetrofitBookApp;
import com.example.app_ban_sach.ultil.sever;

import java.util.ArrayList;
import java.util.List;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.schedulers.Schedulers;

public class TimKiem_Activity extends AppCompatActivity {
    Toolbar toolbar_timkiem;
    RecyclerView recyclerView;
    EditText edtsearch;
    TimKiemAdapter adapterTK;
    List<sachcu> sachcuList = new ArrayList<>();  // Khởi tạo danh sách rỗng
    ApiBookApp apiBookApp;
    CompositeDisposable compositeDisposable = new CompositeDisposable();  // Quản lý luồng RxJava

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout_timkiem);

        AnhXa();     // Ánh xạ các thành phần
        ActionBar(); // Cấu hình toolbar
    }

    private void AnhXa() {
        // Khởi tạo API và ánh xạ các View
        apiBookApp = RetrofitBookApp.getInstance(sever.BASE_URL).create(ApiBookApp.class);
        edtsearch = findViewById(R.id.edt_timkiem);
        toolbar_timkiem = findViewById(R.id.toolbar_timkiem);
        recyclerView = findViewById(R.id.recyclerView_timkiem);

        // Thiết lập RecyclerView với LinearLayoutManager
        LinearLayoutManager layoutManager = new LinearLayoutManager(this);
        recyclerView.setHasFixedSize(true);  // Tối ưu hiệu năng
        recyclerView.setLayoutManager(layoutManager);

        // Khởi tạo Adapter với danh sách rỗng ban đầu
        adapterTK = new TimKiemAdapter(this, sachcuList);
        recyclerView.setAdapter(adapterTK);

        // Thêm sự kiện khi người dùng nhập vào ô tìm kiếm
        edtsearch.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {}

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {}

            @Override
            public void afterTextChanged(Editable editable) {
                String str_search = editable.toString().trim();  // Lấy chuỗi tìm kiếm
                if (!str_search.isEmpty()) {
                    searchBooks(str_search);  // Gọi API để tìm kiếm
                } else {
                    sachcuList.clear();  // Xóa dữ liệu khi chuỗi tìm kiếm rỗng
                    adapterTK.notifyDataSetChanged();
                }
            }
        });
    }

    private void searchBooks(String query) {
        // Gọi API tìm kiếm sách
        compositeDisposable.add(apiBookApp.search(query)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(
                        sachcuModel -> {
                            if (sachcuModel.isSuccess()) {
                                sachcuList.clear();  // Xóa dữ liệu cũ
                                sachcuList.addAll(sachcuModel.getResult());  // Thêm dữ liệu mới
                                adapterTK.notifyDataSetChanged();  // Cập nhật giao diện
                            }
                        },
                        throwable -> {
                            // Xử lý khi xảy ra lỗi
                            Toast.makeText(getApplicationContext(), throwable.getMessage(), Toast.LENGTH_SHORT).show();
                        }
                ));
    }

    private void ActionBar() {
        // Cấu hình Toolbar
        setSupportActionBar(toolbar_timkiem);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbar_timkiem.setNavigationIcon(R.drawable.ic_back);

        // Xử lý sự kiện khi nhấn nút quay lại
        toolbar_timkiem.setNavigationOnClickListener(view -> finish());
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        compositeDisposable.clear();  // Hủy các luồng khi Activity bị hủy
    }
}
