<?php

class MagazijnModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();  // Zorg ervoor dat Database class correct is geladen
    }

    public function getAllMagazijnProducts()
    {
        try {
            $this->db->query('SELECT * FROM magazijn ORDER BY Barcode ASC');
            $result = $this->db->resultSet();
            return $result;
        } catch (Exception $e) {
            error_log($e->getMessage());
            return false;
        }
    }
}
