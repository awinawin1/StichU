<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;

use Its\Example\Dashboard\Presentation\Web\Models\Users;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;

class EditprofileController extends Controller
{
 
    public function indexAction()
    {
        
        $check = $this->db->query("SELECT id FROM  users WHERE username = '".$this->session->get('user-name')."'")->fetchAll();
        $userid = $check[0]['id'];
        $this->view->setVars([
            "userid" =>$userid,



            ]
        );
    }
    public function uploadAction(){
        
        if($this->request->isPost()){
            
            $this->users->assign(
                $this->request->getPost(),
                [
                    'username',
                    'nama',
                    'password',
                    'alamat',
                    'email',
                    'nohp',
                    'id'
                      
                ]
            );

        }
        
        if($this->users->save()){
            
             return $this->response->redirect($_SERVER['HTTP_REFERER']);
        }
        else{
            return "Edit gagal";
        }

   
    }

   
    public function editAction($id)
    {
       $users = Users::findFirst($id);
        $this->view->setVars([

            'users' => $users,
            'id'     => $id
        ]);
    }

    public function editpostAction()
    { 


        // return var_dump($this->request->getPost());
        $this->users = Users::findFirst($this->request->getPost('id'));
        $this->users->assign(
            $this->request->getPost(),
        );

        // return var_dump($this->user);

        if($this->users->update()){


            return $this->response->redirect($_SERVER['HTTP_REFERER']);
           // return $this->response->redirect("/dashboard");
        }
        else{
            return "Update Gagal";
        }

    }
    
}