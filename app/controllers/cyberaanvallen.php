<?php

class Cyberaanvallen extends BaseController
{
    private $typeAanval;

    public function __construct()
    {
        $this->typeAanval = $this->model('CyberaanvallenModel');
    }

    public function index()
    {
        /**
         * Je roept de method getAllSmartphones aan van de smartphoneModel class
         */
        $results = $this->typeAanval->getAllCyberaanvallen();

        $data = [
            'title' => 'Top 5 Cyberaanvallen',
            'cyberaanvallen' => $results
        ];

        $this->view('cyberaanvallen/index', $data);
    }
}