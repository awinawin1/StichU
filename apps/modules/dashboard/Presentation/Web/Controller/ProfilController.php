<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;
use Phalcon\Security;

use Its\Example\Dashboard\Presentation\Web\Models\Users;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;


class ProfilController extends Controller
{
   
    public function indexAction()
    {
        $this->session->get('user-name');
        $check = $this->db->query("SELECT id FROM  users WHERE username = '".$this->session->get('user-name')."'")->fetchAll();
        $id = $check[0]['id'];
        $users = $this->db->query("SELECT * FROM  users WHERE id = '".$id."'")->fetchAll();

        $this->view->setVars([
            "user" =>$users,
            "userid" =>$userid
            



    ]);
    
        return $this->view;

    }


  

  

}