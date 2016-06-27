<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of IndexBaseController
 *
 * @author Dell
 */
class IndexBaseController extends Controller {

    //put your code here
    public $news_id = 7;
    public $pinpai = 5;
    public $chanpin = 6;
    public $dianpu = 8;
    public $lianxi = 9;
    public $hezuo = 10;
    public $top_nav;
    public function init() {
        parent::init();
        $this->top_nav = array(
            $this->pinpai => '品牌',
            $this->chanpin => '产品',
            $this->news_id => '新闻',
            $this->dianpu => '店铺',
            $this->lianxi => '联系',
            $this->hezuo => '合作',
        );
    }

}
