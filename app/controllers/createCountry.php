<?php
public function create()
{
    $data = [
        'title' => 'Voeg een nieuw land toe',
        'message' => '',
        'messageColor' => '',
        'messageVisibility' => 'none',
        'country' => '',
        'capitalCity' => '',
        'continent' => '',
        'population' => '',
        'zipcode' => '',
        'countryError' => '',
        'capitalCityError' => '',
        'continentError' => '',
        'populationError' => '',
        'zipcodeError' => ''
    ];

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_FULL_SPECIAL_CHARS);

        $data['country'] = trim($_POST['country']);
        $data['capitalCity'] = trim($_POST['capitalCity']);
        $data['continent'] = trim($_POST['continent']);
        $data['population'] = trim($_POST['population']);
        $data['zipcode'] = trim($_POST['zipcode']);

        // Valideer de invoer
        $data = CountryValidator::validateCountryInputFields($data);

        // Controleer of de invoer geldig is
        if ($data['isViewValid']) {
            // Probeer de landgegevens op te slaan
            $result = $this->countryModel->createCountry($_POST);

            if ($result) {
                // Succes: toon een bericht en leid de gebruiker door
                $data['message'] = "Land succesvol toegevoegd!";
                $data['messageColor'] = "success";
                $data['messageVisibility'] = "flex";
                header("Refresh:3; url=" . URLROOT . "/countries/index");
            } else {
                // Fout bij opslaan
                $data['message'] = "Er is een fout opgetreden, opslaan is nu niet mogelijk";
                $data['messageColor'] = "danger";
                $data['messageVisibility'] = "flex";
                header('Refresh:3; ' . URLROOT . '/countries/create');
            }
        } else {
            $data['messageVisibility'] = 'flex';
            $data['message'] = "Er zijn fouten in de invoer.";
            $data['messageColor'] = "danger";
        }
    }

    $this->view('countries/create', $data);
}
