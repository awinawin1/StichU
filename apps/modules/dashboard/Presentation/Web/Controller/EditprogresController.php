<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;
use Phalcon\Security;

use Its\Example\Dashboard\Presentation\Web\Models\jahitan;

use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;


class EditprogresController extends Controller
{
   
    public function indexAction()
    {
        $jahitan = $this->db->query("SELECT * FROM  jahitan")->fetchAll();

        $this->view->setVars([
            "jahitans" =>$jahitan


    ]);
    
        return $this->view;

    }


  

  

}