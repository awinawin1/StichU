<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;
use Phalcon\Security;

use Its\Example\Dashboard\Presentation\Web\Models\jahitan;

use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;


class ProgressorderController extends Controller
{
   
    public function indexAction()
    {
        $this->session->get('user-name');
        $jahitan = $this->db->query("SELECT * FROM  jahitan")->fetchAll();

        $this->view->setVars([
            "jahitans" =>$jahitan


    ]);
    
        return $this->view;

    }


  

  

}