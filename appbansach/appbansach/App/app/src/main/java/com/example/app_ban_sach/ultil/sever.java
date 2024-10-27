package com.example.app_ban_sach.ultil;

import com.example.app_ban_sach.model.User;
import com.example.app_ban_sach.model.shoppingCart;

import java.util.ArrayList;
import java.util.List;

public class sever {

    public static String localhost = "192.168.177.1";

    public static String duongdan_SachMoi            = "http://" + localhost + "/bookapp/select_newbook.php";
    public static String duongdan_LoaiSach           = "http://" + localhost + "/bookapp/getloaisach.php";
    public static String duongdan_TheoTheLoai        = "http://" + localhost + "/bookapp/getsach.php?page=";
    public static String duongdan_ThongTinKhachHang  = "http://" + localhost + "/bookapp/getthongtinkhachhang.php";
    public static String duongdan_HoaDon             = "http://" + localhost + "/bookapp/getchitiethoadon.php";
    public static String duongdan_TimKiem            = "http://" + localhost + "/bookapp/search.php";

    public static final String BASE_URL              = "http://" + localhost + "/bookapp/";
    public static User user_current = new User();
    public static List<shoppingCart> manggiohang;
    public static List<shoppingCart> mangmuahang = new ArrayList<>();

}

