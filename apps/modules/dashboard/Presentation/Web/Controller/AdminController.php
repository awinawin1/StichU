<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;

use Its\Example\Dashboard\Presentation\Web\Form\SignupForm;

use Its\Example\Dashboard\Presentation\Web\Models\Users;
use Its\Example\Dashboard\Presentation\Web\Models\Penjahit;
use Phalcon\Mvc\Controller;
use Phalcon\Security;
use Phalcon\Session\Manager;
//validation
use Phalcon\Validation;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Url;
use Phalcon\Validation\Validator\Regex as RegexValidation;


class AdminController extends Controller
{
        public function initialize(){
            if($this->session->get('user-admin') != 1){
                return $this->response->redirect('/dashboard/');
            }
        }



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