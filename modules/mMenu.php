<div class="logo">
                                <img src="img/logo1.png" alt="" width="100%" height="auto">
                        </div>

                        <div class="menu-nav">
                               <ul class="nav">
                                   <li>
                                       <a href="#">Trang chủ</a>
                                   </li>
                                   <li>
                                        <a href="#">Giới thiệu</a>
                                   </li>
                                   <li>
                                        <a href="#">Sản phẩm</a>
                                            <div class="submenu">
                                                <ul>
                                                <?php
                                                $sql = "SELECT LoaiSanPham.MaLoaiSanPham, LoaiSanPham.TenLoaiSanPham
                                                        FROM LoaiSanPham
                                                        WHERE LoaiSanPham.BiXoa = FALSE";
                                                $result = DataProvider::ExecuteQuery($sql);
                                                while($row = mysqli_fetch_array($result))
                                                {
                                                    $name = $row["TenLoaiSanPham"];
                                                    $url = "index.php?a=3&id=".$row["MaLoaiSanPham"];
                                                    include "templates/tempMenu.php";
                                                }
                                                ?>
                                                </ul>
                                            </div>
                                   </li>
                                   <li>
                                        <a href="#">Thương hiệu</a>
                                            <div class="submenu">
                                                <ul>
                                                <?php
                                                $sql = "SELECT HangSanXuat.MaHangSanXuat, HangSanXuat.TenHangSanXuat
                                                        FROM HangSanXuat
                                                        WHERE HangSanXuat.BiXoa = FALSE";
                                                $result = DataProvider::ExecuteQuery($sql);
                                                while($row = mysqli_fetch_array($result))
                                                {
                                                    $name = $row["TenHangSanXuat"];
                                                    $url = "index.php?a=2&id=".$row["MaHangSanXuat"];
                                                    include "templates/tempMenu.php";
                                                }
                                            ?>
                                                    
                                                </ul>
                                            </div>
                                   </li>
                                   <li>
                                        <a href="#">Liên hệ</a>
                                   </li>
                               </ul>
                        </div>
                    </div>