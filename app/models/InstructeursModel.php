<?php
class CountriesModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllCountries()
    {
        try {
            $this->db->query('SELECT * FROM countries ORDER BY naam ASC');
            return $this->db->resultSet();
        } catch (Exception $e) {
            error_log($e->getMessage());
            return false;
        }
    }
}
