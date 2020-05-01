<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;

use Its\Example\Dashboard\Presentation\Web\Models\Jahitan;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;

class BuktitfController extends Controller
{
    public function initialize(){
        
        $this->jahitan = new Jahitan();

   
    }


    public function indexAction()
    {
        $this->session->get('user-name');
        
        $check = $this->db->query("SELECT id FROM  users WHERE username = '".$this->session->get('user-name')."'")->fetchAll();
        $userid = $check[0]['id'];
        $this->view->setVars([
            "userid" =>$userid,



            ]
        );
    }
    public function uploadAction(){
        
        if($this->request->isPost()){
            
            $this->jahitan->assign(
                $this->request->getPost(),
                [
                    'size',
                    'iduser',
                    'alamatkirim',
                    'keterangan'
                    
                ]
            );

        }
 

          if ($this->request->hasFiles() == true) {
            //Print the real file names and their sizes
            $file = file_get_contents($_FILES['buktitf']['tmp_name']);
            $file = base64_encode($file);
            $this->jahitan->buktitf = $file;
             $this->jahitan->save();
        }
       
       
    
        if($this->jahitan->save()){
            
             return $this->response->redirect($_SERVER['HTTP_REFERER']);
        }
        else{
            return "upload gagal";
        }

   
    }

  

    public function deleteAction($id){
      
        $id = Jahitan::find($id);
        if($id->delete()){
            return $this->response->redirect($this->request->getHTTPReferer());
        }
   
    }

    public function editAction($id)
    {
       $jahitan = Jahitan::findFirst($id);
        $this->view->setVars([

            'jahitan' => $jahitan,
            'id'     => $id
        ]);
    }

    public function editpostAction()
    { 
        $this->jahitan = Jahitan::findFirst($this->request->getPost('id'));
        $this->jahitan->assign(
            $this->request->getPost(),
        );
        if ($this->request->hasFiles() == true) {
            //Print the real file names and their sizes
            $file = file_get_contents($_FILES['buktitf']['tmp_name']);
            $file = base64_encode($file);
            $this->jahitan->buktitf= $file;
            // $this->barang->save();
        }
        if($this->jahitan->update()){


            return $this->response->redirect($_SERVER['HTTP_REFERER']);
          
        }
        else{
            return "Update Gagal";
        }

    }
    
}