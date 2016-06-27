<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of News_CategoryController
 *
 * @author Dell
 */
class News_categoryController extends Controller {

    public $page_name = "资讯分类";
    
    //put your code here
    public function actionIndex() {
        $this->breadcrumbs = array($this->page_name.'管理');
        //$data = NewsCategory::model()->getList();
        $history_data = NewsCategory::model()->unlimitData();
        unset($history_data[0]);
        $this->render('index', array('history_data'=>$history_data));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加'.$this->page_name);
        $model = new NewsCategory();
        $model->sort = "";
        //无限极分类
        $this->is_upload = true;//用到图片上传
        $history_data = NewsCategory::model()->unlimitData();
        $this->render('_form', array('model' => $model,'history_data'=>$history_data));
    }

    public function actionUpdate() {
        $this->breadcrumbs = array('修改'.$this->page_name);
        $id = Yii::app()->request->getParam('id', 0);
        $model = NewsCategory::model()->findByPk($id);
        $this->checkEmpty($model);
        //无限极分类
        $this->is_upload = true;//用到图片上传
        $history_data = NewsCategory::model()->unlimitData();
        $this->render('_form', array('model' => $model,'history_data'=>$history_data));
    }

    public function actionSave() {
        $id = Yii::app()->request->getParam('id', 0);
        if ($id) {
            $model = NewsCategory::model()->findByPk($id);
        } else {
            $model = new NewsCategory();
            $model->created = time();
        }
        try {
            $model->attributes = Yii::app()->request->getPost('NewsCategory');
            $image = Yii::app()->request->getPost('image');
            $model->image = $image ? implode(",",$image ) : "";
            $model->save();
            if ($model->hasErrors()) {
                throw new Exception(Utils::getFirstError($model->errors));
            }
            $this->handleResult(1, '操作成功',  $this->createUrl('index'));
        } catch (Exception $ex) {
            $this->handleResult(0, '操作失败,原因:' . $ex->getMessage());
        }
    }
    
    public function actionDelete(){
        $id = Yii::app()->request->getParam('id','');
        $id = (array)$id;
        $criteria = new CDbCriteria();
        $criteria->addInCondition('id', $id);
        $res = NewsCategory::model()->deleteAll($criteria);
        if($res){
            $this->handleResult(1, '操作成功');
        }else{
            $this->handleResult(0, '操作失败');
        }
    }
}
