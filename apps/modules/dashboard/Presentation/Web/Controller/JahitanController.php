<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;
use Phalcon\Security;

use Its\Example\Dashboard\Presentation\Web\Models\Users;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;


class JahitanController extends Controller
{
   
    public function indexAction()
    {
        $this->session->has('$var');
        $check = $this->db->query("SELECT id FROM  users WHERE username = '".$this->session->get('user-name')."'")->fetchAll();
        $id = $check[0]['id'];
        $jahitan = $this->db->query("SELECT * FROM  jahitan WHERE iduser = '".$id."'")->fetchAll();

        $this->view->setVars([
            "jahitans" =>$jahitan,
            "userid" => $id



    ]);
    
        return $this->view;

    }


  

  

}