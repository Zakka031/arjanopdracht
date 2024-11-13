<?php

class Homepages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Welkom bij Jamin',
            'message' => 'Welkom op de homepage van Jamin!',
        ];

        $this->view('homepages/index', $data);
    }
}
