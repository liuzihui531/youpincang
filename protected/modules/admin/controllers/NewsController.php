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
class NewsController extends Controller {

    public $page_name = "文章";
    
    //put your code here
    public function actionIndex() {
        $this->breadcrumbs = array($this->page_name.'管理');
        $data = News::model()->getList();
        $this->render('index', $data);
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加'.$this->page_name);
        $model = new News();
        $this->is_ueditor = true;//用到ueditor编辑器
        $this->is_upload = true;//用到图片上传
        $cate = NewsCategory::model()->unlimitData();
        unset($cate[0]);
        $this->render('_form', array('model' => $model,'cate'=>$cate));
    }

    public function actionUpdate() {
        $this->breadcrumbs = array('修改'.$this->page_name);
        $id = Yii::app()->request->getParam('id', 0);
        $model = News::model()->findByPk($id);
        $this->checkEmpty($model);
        $this->is_ueditor = true;//用到ueditor编辑器
        $this->is_upload = true;//用到图片上传
        $model->content = Utils::deSlashes($model->content);
        $cate = NewsCategory::model()->unlimitData();
        unset($cate[0]);
        $this->render('_form', array('model' => $model,'cate'=>$cate));
    }

    public function actionSave() {
        $id = Yii::app()->request->getParam('id', 0);
        if ($id) {
            $model = News::model()->findByPk($id);
        } else {
            $model = new News();
            $model->create_time = time();
        }
        try {
            $model->attributes = Yii::app()->request->getPost('News');
            $model->content = Utils::enSlashes($model->content);
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
        $res = News::model()->deleteAll($criteria);
        if($res){
            $this->handleResult(1, '操作成功');
        }else{
            $this->handleResult(0, '操作失败');
        }
    }

}
