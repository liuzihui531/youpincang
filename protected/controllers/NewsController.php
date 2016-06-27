<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CateController
 *
 * @author Dell
 */
class NewsController extends IndexBaseController{
    public function actionIndex(){
        $id = Yii::app()->request->getParam('id',0);
        $this->render('index');
    }
    
    public function actionView(){
        $id = Yii::app()->request->getParam('id',0);
        $model = News::model()->findByPk($id);
        if($model->type == 0){ //普通网页
            //网页类型，有整页的，也有2/3页且右侧带分类的
            if($model->cate_id == $this->pinpai){
                $this->render("pinpai",array('model'=>$model));
            }
        }
    }
}
