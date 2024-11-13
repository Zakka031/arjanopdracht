<?php

class Magazijn extends BaseController
{
    private $magazijnModel;

    public function __construct()
    {
        $this->magazijnModel = $this->model('MagazijnModel');
    }

    public function index()
    {
        // Data initialisatie
        $data = [
            'title' => 'Overzicht Magazijn Jamin',
            'message' => NULL,
            'messageColor' => NULL,
            'messageVisibility' => 'none',
            'dataRows' => NULL
        ];

        // Haal magazijn producten op uit het model
        $result = $this->magazijnModel->getAllMagazijnProducts();

        // Controleer of er een resultaat is
        if ($result === false) {
            // Fout afhandelen bij geen data of een probleem
            $data['message'] = "Er is een fout opgetreden in de database.";
            $data['messageColor'] = "danger";
            $data['messageVisibility'] = "flex";
        } else {
            $data['dataRows'] = $result;
        }

        // Laad de view
        $this->view('magazijn/index', $data);
    }

    // Andere methoden voor verdere functionaliteit zoals ProductDetails, LeveringDetails kunnen hier komen
}


