<?php
class Instructeurs extends BaseController
{
    private $instructeursModel;

    public function __construct()
    {
        $this->instructeursModel = $this->model('InstructeursModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Overzicht Instructeurs',
            'instructeurs' => $this->instructeursModel->getAllInstructeurs()
        ];

        $this->view('instructeurs/index', $data);
    }
}
