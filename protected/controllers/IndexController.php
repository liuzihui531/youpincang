<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
Class IndexController extends IndexBaseController{
    public function actionIndex(){
        $criteria = new CDbCriteria();
        $criteria->order = "sorting asc";
        $criteria->limit = 8;
        $criteria->compare('type', 0);
        $big = IndexImage::model()->findAll($criteria);
        $criteria = new CDbCriteria();
        $criteria->order = "sorting asc";
        $criteria->limit = 10;
        $criteria->compare('type', 1);
        $small = IndexImage::model()->findAll($criteria);
        $this->render('index',array('big'=>$big,'small'=>$small));
    }
}
