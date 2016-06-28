<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of IndexImage_CategoryController
 *
 * @author Dell
 */
class Index_imageController extends Controller {

    public $page_name;
    public function init() {
        parent::init();
        $type = Yii::app()->request->getParam('type',0);
        $this->page_name = $type == 0 ? "大图列表" : "小图列表";
    }
    
    //put your code here
    public function actionIndex() {
        $this->breadcrumbs = array($this->page_name.'管理');
        $data = IndexImage::model()->getList();
        $this->render('index', $data);
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加'.$this->page_name);
        $model = new IndexImage();
        $this->is_upload = true;//用到图片上传
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate() {
        $this->breadcrumbs = array('修改'.$this->page_name);
        $id = Yii::app()->request->getParam('id', 0);
        $model = IndexImage::model()->findByPk($id);
        $this->checkEmpty($model);
        $this->is_upload = true;//用到图片上传
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $id = Yii::app()->request->getParam('id', 0);
        if ($id) {
            $model = IndexImage::model()->findByPk($id);
        } else {
            $model = new IndexImage();
            $model->created = time();
        }
        try {
            $model->attributes = Yii::app()->request->getPost('IndexImage');
            $image = Yii::app()->request->getPost('image');
            $model->image = $image ? implode(",",$image ) : "";
            $model->save();
            if ($model->hasErrors()) {
                throw new Exception(Utils::getFirstError($model->errors));
            }
            $this->handleResult(1, '操作成功',  $this->createUrl('index',array('type'=>$model->type)));
        } catch (Exception $ex) {
            $this->handleResult(0, '操作失败,原因:' . $ex->getMessage());
        }
    }
    
    public function actionDelete(){
        $id = Yii::app()->request->getParam('id','');
        $id = (array)$id;
        $criteria = new CDbCriteria();
        $criteria->addInCondition('id', $id);
        $res = IndexImage::model()->deleteAll($criteria);
        if($res){
            $this->handleResult(1, '操作成功');
        }else{
            $this->handleResult(0, '操作失败');
        }
    }

}
