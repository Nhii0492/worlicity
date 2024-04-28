<?php
require_once 'config/db.php';
class UserModel
{
    protected $db;
    public function __construct()
    {
        $connect = new Connect();
        $this->db = $connect->getConnection();
    }

    //Lấy DS tất cả User
    public function getUsers()
    {
        $query = "SELECT * FROM users";
        $result = $this->db->query($query)->fetchAll(PDO::FETCH_ASSOC);

        return $result;
    }

    // Đếm tổng số người dùng trong bảng users
    public function countUsers()
    {
        $query = "SELECT COUNT(user_id) AS total_count FROM users";
        $result = $this->db->query($query)->fetch(PDO::FETCH_ASSOC);

        if ($result && isset($result['total_count'])) {
            return $result['total_count'];
        }

        return 0;
    }

    public function getUserByID($user_id)
    {
        $query = "SELECT u.*, at.account_type_name
        FROM users u
        LEFT JOIN account_types at ON u.account_type_id = at.account_type_id
        WHERE u.user_id = :user_id";
        $statement = $this->db->prepare($query);
        $statement->bindParam(':user_id', $user_id);
        $statement->execute();
        $user = $statement->fetch(PDO::FETCH_ASSOC);

        return $user;
    }

    // lấy role
    public function getAccountTypes()
    {
        $query = "SELECT * FROM account_types";
        $result = $this->db->query($query)->fetchAll(PDO::FETCH_ASSOC);

        return $result;
    }

    // Hàm đếm tổng số bất động sản trong bảng properties
    public function countProperties()
    {
        $query = "SELECT COUNT(property_id) AS total_count FROM properties";
        $result = $this->db->query($query)->fetch(PDO::FETCH_ASSOC);

        if ($result && isset($result['total_count'])) {
            return $result['total_count'];
        }

        return 0;
    }

    //Đếm số lượng view trong bảng property
    public function countTotalViewCount()
    {
        $query = "SELECT SUM(view_count) AS total_view_count FROM (
                SELECT view_count FROM properties
                UNION ALL
                SELECT view_count FROM news_blog
            ) AS view_counts";
        $statement = $this->db->prepare($query);
        $statement->execute();
        $result = $statement->fetch(PDO::FETCH_ASSOC);

        if ($result && isset($result['total_view_count'])) {
            return $result['total_view_count'];
        }

        return 0;
    }

    // Đếm số lượng ảnh trong bảng property_images
    public function countPropertyImages()
    {
        $query = "SELECT COUNT(image_id) AS total_count FROM property_images";
        $result = $this->db->query($query)->fetch(PDO::FETCH_ASSOC);

        if ($result && isset($result['total_count'])) {
            return $result['total_count'];
        }

        return 0;
    }

    // Đếm tổng số tin tức trong bảng news_blog
    public function countNewsBlogs()
    {
        $query = "SELECT COUNT(news_id) AS total_count FROM news_blog";
        $result = $this->db->query($query)->fetch(PDO::FETCH_ASSOC);

        if ($result && isset($result['total_count'])) {
            return $result['total_count'];
        }

        return 0;
    }

    public function countTotalByColumn($columnName, $tableName, $user_id)
    {
        $query = "SELECT COUNT($columnName) AS total_count FROM $tableName WHERE user_id = :user_id";
        $statement = $this->db->prepare($query);
        $statement->bindParam(':user_id', $user_id);
        $statement->execute();
        $result = $statement->fetch(PDO::FETCH_ASSOC);

        if ($result && isset($result['total_count'])) {
            return $result['total_count'];
        }

        return 0;
    }

    public function getPropertyByUser($user_id)
    {
        $query = "SELECT p.*, pi.image_url, u.fullname, u.avatar_url
        FROM properties p
        LEFT JOIN (
            SELECT property_id, MIN(image_url) AS image_url
            FROM property_images
            GROUP BY property_id
        ) pi ON p.property_id = pi.property_id
        LEFT JOIN users u ON p.user_id = u.user_id
        WHERE p.user_id = :user_id
        ORDER BY p.property_id DESC";
        $statement = $this->db->prepare($query);
        $statement->bindParam(':user_id', $user_id);
        $statement->execute();
        $properties = $statement->fetchAll(PDO::FETCH_ASSOC);

        return $properties;
    }
}
