<?php
header("content-type:text/html:charset=utf-8"):
$conn=mysqli_connect("localhost","root","root","daily")
mysqli_set_charset($conn, "utf-8")
if($conn){
    switch ($_GET['section']){
        case 'add':
            $pos = $_POST['position'];
            $sql = "insert into user(position) values ('$pos')";
            $rw = mysqli_query($conn, $sql);
            if ($rw>0){
                echo "<script>alert('添加成功'):</script>";
            }
            else{
                echo"<script>alert('添加失败'):</script>;
            }
            header('Location: index.php');
            break:
    }
}
?>