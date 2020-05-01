<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;

use Its\Example\Dashboard\Presentation\Web\Models\Jahitan;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;

class UploadController extends Controller
{
    public function initialize(){
        
        $this->jahitan = new Jahitan();

   
    }


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
        $this->jahitan->created_at = $date_string = (new \DateTime('now'))->format('Y-m-d H:i:s');
        
        if($this->request->isPost()){
            
            $this->jahitan->assign(
               
                $this->request->getPost(),
                [
                    'size',
                    'iduser',
                    'alamatkirim',
                    'keterangan',
                    'atasnama',

                    
                ]
                
            );

        }
        
        if ($this->request->hasFiles() == true) {
            //Print the real file names and their sizes
            $file = file_get_contents($_FILES['design']['tmp_name']);
            $file = base64_encode($file);
            $this->jahitan->design = $file;
            $this->jahitan->save();
        }
    
        if($this->jahitan->save()){
            
             return $this->response->redirect($_SERVER['HTTP_REFERER']);
        }
        else{
            return "upload gagal";
        }


    }
    public function uploadtfAction(){
        $this->jahitan = Jahitan::findFirst($this->request->getPost('id'));             
        $this->jahitan->assign(
            $this->request->getPost(),
            [  
                'id',
            ]
        );
        if ($this->request->hasFiles() == true) {
            //Print the real file names and their sizes
            $file = file_get_contents($_FILES['buktitf']['tmp_name']);
            $file = base64_encode($file);
            $this->jahitan->buktitf = $file;
            $this->jahitan->save();
        } 

        if($this->jahitan->update()){
            
             return $this->response->redirect($_SERVER['HTTP_REFERER']);
        }
        else{
            return "upload gagal";
        }

   
    }
    
    public function uploadprogesAction(){
        
        $this->jahitan = Jahitan::findFirst($this->request->getPost('id'));             
        $this->jahitan->assign(
            $this->request->getPost(),
            [
                'aksi',
                'progres',
                'id',
                'progres1',
                'progres2',
                'progres3',
                'progres4',
                
            ]
        );
        if ($this->request->hasFiles() == true) {
            //Print the real file names and their sizes
            $file = file_get_contents($_FILES['buktitf']['tmp_name']);
            $file = base64_encode($file);
            $this->jahitan->buktitf = $file;
            $this->jahitan->save();
            
        }
        $this->jahitan->update();

        if($this->jahitan->update()){
            
             return $this->response->redirect($_SERVER['HTTP_REFERER']);
        }
        else{
            return "upload gagal";
        }

   
    }

    public function deleteAction($id){
      
        // $id = Jahitan::find($id);
        $this->db->query("DELETE FROM Jahitan WHERE id = '$id'");
        // if($id->delete()){
        $this->response->redirect('/dashboard/kelola');
        // }
   
    }

    public function deleteorderAction($id){
      
        // $id = Jahitan::find($id);
        $this->db->query("DELETE FROM Jahitan WHERE id = '$id'");
        // if($id->delete()){
        $this->response->redirect('/dashboard/progressorder');
        // }
   
    }




    public function editAction($id)
    {
       $jahitan = Jahitan::findFirst($id);
        
        $this->view->setVars([

            'jahitan' => $jahitan,
            'id'     => $id
        ]);
        // $this->response->redirect('/dashboard/kelola');
    }

    public function editpostAction()
    { 
        $this->jahitan = Jahitan::findFirst($this->request->getPost('id'));
        $this->jahitan->assign(
            $this->request->getPost(),
            [
                'size',
                'iduser',
                'alamatkirim',
                'keterangan',
                'atasnama',       
            ]
        );
        if ($this->request->hasFiles() == true) {
            //Print the real file names and their sizes
            $file = file_get_contents($_FILES['design']['tmp_name']);
            $file = base64_encode($file);
            $this->jahitan->design = $file;
            $this->jahitan->save();
            
  
        }
       
       
        if($this->jahitan->update()){
            // return var_dump($this->jahitan);
            return $this->response->redirect($_SERVER['HTTP_REFERER']);
           // return $this->response->redirect("/dashboard");
        }
        else{
            return "Update Gagal";
        }
    }





 public function uploadaksiAction(){
        
        if($this->request->isPost('id')){
            
            $this->jahitan->assign(
                $this->request->getPost(),
                [
                    'aksi',
                    'progres'
                    
                ]
            );

        }
       
       
    
        if($this->jahitan->update()){
            
             return $this->response->redirect($_SERVER['HTTP_REFERER']);
        }
        else{
            return "upload gagal";
        }

   
    }
}