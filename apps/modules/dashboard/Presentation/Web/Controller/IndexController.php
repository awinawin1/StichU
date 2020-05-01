<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;

use Phalcon\Mvc\Controller;

class IndexController extends Controller
{
    public function indexAction()
    {
        $this->session->has('$var');
        $db = $this->getDI()->get('db');

        $sql = 'SELECT * FROM users';

        $result = $db->fetchOne($sql, \Phalcon\Db\Enum::FETCH_ASSOC);

        echo var_dump($result);
       
    }
}