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


class AuthController extends Controller
{
        public $validator;
        public function initialize(){
        $this->users = new Users();
        $this->security = new Security();
        
        $this->validator = new Validation();

        $this->validator->add('username',
        new PresenceOf([
            'message'=> 'username required'
        ])
        );

        $this->validator->add('password', new RegexValidation([
            'message' => 'Password paling sedikit terdiri dari
             8 karakter dan harus memiliki kombinasi huruf dan angka',

             'pattern' => '/^\S*(?=\S{8,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])\S*$/',
        
        ]));
        $this->validator->add('email',
        new PresenceOf([
            'message'=> 'email required'
        ])
        );
        $this->validator->add('email',
        new Email([
            'message' => 'Email tidak valid'
        ])
        );

       
    }



    public function indexAction()
    {
        $this->session->get('user-name');
        return 'Auth page';
    }


    public function loginAction(){
        
        if($this->request->isPost()){

            $this->users->assign(
                $this->request->getPost(),
                [
                    'username',
                    'password'
                ]
            );


            
            $check = $this->db->query("select * from  users where username = '".$this->users->username."'")->fetchAll();
            if($check){
                foreach($check as $cek){

                    if($this->security->checkHash($this->users->password,$cek['password'])){

                        $this->session->set('user-name', $cek['username']);
                        $this->session->set('user-admin', $cek['isAdmin']);
                        if($this->session->get('user-admin') != 0 ){
                            return $this->response->redirect('/dashboard/homeadmin');
                        }
                        return $this->response->redirect("dashboard");
                    }

                    else {
                    
                        $this->security->hash(rand());

                        $this->view->message = "password salah";
                    
                        return $this->view;    
                    
                    }

                }
                
            }



            else{

                $this->view->message = "username tidak ditemukan";
                return $this->view;        
                 
            }




        }


    }

    public function logoutAction()
    {
        $this->session->destroy();
        return $this->response->redirect("dashboard");
    }

    public function registerAction()
    {
        // insert data ke table pegawai
        $this->view->form = new SignupForm();  
        if($this->request->isPost()){
            $keluaran = "<br>";
         
            $this->users->assign(
                $this->request->getPost(),
                [
                    'username',
                    'email',
                    'password',
                    'nama',
                    'alamat',
                    'nohp'
                ]
            );

        $check = $this->db->query("select * from  users where username = '".$this->users->username."'")->fetchAll();
        $checkemail = $this->db->query("select * from  users where password = '".$this->users->passwp."'")->fetchAll();
       
        
        if($check || $checkemail){
            if($check){
                $this->view->message = $this->view->message."Username Telah Digunakan<br>";
             }

             if($checkemail){
               $this->view->message = $this->view->message."Email Telah Digunakan";
            }
            return $this->view;
        }
        
        else{
            if(count($this->validator->validate($_POST))){
                foreach ($this->validator->validate($_POST) as $message)
                    $keluaran = $keluaran.$message . "<br>";
                $this->view->message = $keluaran;
                return $this->view;
            }

            $this->users->password = $this->security->hash($this->users->password);
            // var_dump($this->users);
            // $this->view->enable();
            if($success = $this->users->save()){

                $this->view->message = "Pendaftaran berhasil";
                return $this->response->redirect("dashboard/auth/login");
            }
            else{
                return "pendaftaran gagal";
            }
        }
        
        
        }

    
    }


}